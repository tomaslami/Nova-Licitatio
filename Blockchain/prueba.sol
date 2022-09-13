// SPDX-License-Identifier: MIT

pragma solidity ^0.4.19;

contract Proyecto {

struct Licitacion {
uint ProcessNum;
string ProcessName;
string Ubi;
uint SuggAmount;
uint Time;
    }
event NewLicit (address licit_Id, uint processNum, uint suggAmount, string ubi, string processName, uint time);
Licitacion[] public licitaciones;
mapping(uint => address) public Comp_Licit;
mapping(uint => address) public Comp_Cons;

function CreateLicit(uint _ProcessNum, uint _SuggAmount, uint _Time, string memory _Ubi, string memory _ProcessName) internal {
    uint Id = licitaciones.push(Licitacion(_ProcessNum, _ProcessName, _Ubi, _SuggAmount, _Time));
    Comp_Licit[Id] = msg.sender;
    Comp_Cons[Id] = msg.sender;
    NewLicit(msg.sender, _ProcessNum, _SuggAmount, _Ubi, _ProcessName, _Time);
    }
modifier onlyComp (uint _LicitId){
    require(msg.sender == Comp_Licit[_LicitId]);
    require(msg.sender == Comp_Cons[_LicitId]);
    _;
}

function getLicitByOwner (address _Owner) internal view returns(int[]) {
    
}


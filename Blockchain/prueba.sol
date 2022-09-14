// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Proyecto {

struct Licitacion {
address OwnerComp;
uint ProcessNum;
string ProcessName;
string Ubi;
uint SuggAmount;
uint Time;
    }
event NewLicit (address OwnerComp, uint processNum, uint suggAmount, string ubi, string processName, uint time);
Licitacion[] public licitaciones;
mapping(uint => address) public Comp_Licit;
mapping(uint => address) public Comp_Cons;

function CreateLicit(address _OwnerComp, uint _ProcessNum, uint _SuggAmount, uint _Time, string memory _Ubi, string memory _ProcessName) public {
    uint Id = licitaciones.push(Licitacion(_OwnerComp, _ProcessNum, _SuggAmount, _Time, _Ubi, _ProcessName));
    Comp_Licit[Id] = msg.sender;
    Comp_Cons[Id] = msg.sender;
    NewLicit(msg.sender, _ProcessNum, _SuggAmount, _Ubi, _ProcessName, _Time);
    }
modifier onlyComp (uint _LicitId){
    require(msg.sender == Comp_Licit[_LicitId]);
    require(msg.sender == Comp_Cons[_LicitId]);
    _;
}

}

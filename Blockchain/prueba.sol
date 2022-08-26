// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;
contract Licitaciones {

event NewLicit(uint Licit_Id, uint Tiempo, uint Monto, string Ubicacion);

struct Licitacion {
    uint _TiempoPlazo;
    uint _MontoSugerido;
    string memory _Ubicacion;
}
Licitacion[] public licitaciones;
mapping(string => address) public licit_ToOwner;
mapping(address => string) ownerLicit_Count;

function _createLicit(uint TiempoPlazo_, uint MontoSugerido_, string memory Ubicacion_) private view{

uint id = licitaciones.push(Licitacion(TiempoPlazo_, MontoSugerido_, Ubicacion_)) - 1;
licit_ToOwner[id] = msg.sender;
ownerLicit_Count[msg.sender]++;
emit NewLicit(id, TiempoPlazo_, MontoSugerido_, Ubicacion_);

}


}
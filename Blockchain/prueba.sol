// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.16.0;

contract Licitaciones {

struct Licitacion {

    uint _TiempoPlazo;
    uint _MontoSugerido;
    string _Ubicacion;
    address _EmpresaCons;
    address _OrgEst;
                  }
mapping (uint => Licitacion) _NumLic;
mapping (address => string) _EmpresaCons;
uint _CantLicit;

function NewLicitacion (address _EmpresaCons, address _OrgEst, uint _)public returns (){

}


}
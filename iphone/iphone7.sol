pragma solidity 0.5.17;

contract SupplyChain{
    
    struct manufacturer{
    address mfgAddress;  
    bytes32 mfgName;
    bytes32 mfgLocation;
    
}
 mapping(address => manufacturer) public mfgAddress;
 manufacturer public manufacturerDetails;

struct partner{

    bytes32 partnerName;
    bytes32 partnerLocation;
    address partnerAddress;
    bytes32 role;
    bytes32 stage;
}
 mapping(bytes32 => partner) public partners;

struct product{
    bytes32 proId;
    bytes32 proName;
    bytes32[] proState;
    bytes32[] timeStamp;
    address[] partAddress;
}
  mapping(address => product) public products;  
  bytes32[] public productsList;
  
  function addManufacturer(address _mfgAddress,bytes32 _mfgName,bytes32 _mfgLocation)public{
    mfgAddress[_mfgAddress].mfgAddress=_mfgAddress;    
    mfgAddress[_mfgAddress].mfgName=_mfgName;
    mfgAddress[_mfgAddress].mfgLocation=_mfgLocation;
  }

}
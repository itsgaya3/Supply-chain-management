pragma solidity 0.5.16;
contract SupplyChain{
address public owner;
constructor() public{
	owner = msg.sender;
}
modifier onlyOwner() {
  require(msg.sender == owner);
  _;
}
struct manufacturer{
    address mfgaddress;
    bytes32 mfgName;
    bytes32 mfgLocation;
}
mapping(address=>manufacturer) manufacturerDetails;
address[] public manufacturers;
function addManufacturer(address mfgaddress,bytes32 mfgName,bytes32 mfgLocation) public onlyOwner(){
        manufacturerDetails[mfgaddress].mfgaddress = mfgaddress;
        manufacturerDetails[mfgaddress].mfgName = mfgName;
        manufacturerDetails[mfgaddress].mfgLocation = mfgLocation;
        manufacturers.push(mfgaddress);
    }
    function verifyManufacturer(address mfgaddress) view public returns(address,bytes32, bytes32){
        return(manufacturerDetails[mfgaddress].mfgaddress,manufacturerDetails[mfgaddress].mfgName, manufacturerDetails[mfgaddress].mfgLocation);
    }
     function updateManufacturer(address mfgaddress,bytes32 mfgName,bytes32 mfgLocation) public onlyOwner(){
        for(uint i=0;i<manufacturers.length;i++){
            if(manufacturers[i] == mfgaddress){
                manufacturerDetails[mfgaddress].mfgName = mfgName;
                manufacturerDetails[mfgaddress].mfgLocation = mfgLocation;
                
            }
        }
    }
}
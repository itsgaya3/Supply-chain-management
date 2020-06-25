pragma solidity 0.5.17;

contract SupplyChain{
    
 address public mfgaddress;

 struct manufacturer{
    bytes32 mfgName;
    bytes32 mfgLocation;
    address mfgaddress; 
 }
 

 mapping(address=>manufacturer) manufacturerDetails;
address[] public manufacturers;
    


struct partner{

    bytes32 partnerName;
    bytes32 partnerLocation;
    bytes32 role;
}
 mapping(address => partner) partnerDetails;
  address[] public partners;

struct product{
    bytes32 proId;
    bytes32 proName;
    bytes32[] proState;
    bytes32[] timeStamp;
    address[] partAddress;
}
  mapping(bytes32 => product) public productDetails;  
  bytes32[] public products;
  

 
 function addManufacturer(address _mfgaddress,bytes32 _mfgName,bytes32 _mfgLocation) public{
        manufacturerDetails[_mfgaddress].mfgaddress=_mfgaddress;
        manufacturerDetails[_mfgaddress].mfgName = _mfgName;
        manufacturerDetails[_mfgaddress].mfgLocation = _mfgLocation;
         manufacturers.push(_mfgaddress);
    }
    
    function verifyManufacturer(address _mfgaddress) view public returns(bytes32, bytes32){
        return(manufacturerDetails[_mfgaddress].mfgName, manufacturerDetails[_mfgaddress].mfgLocation);
    }
constructor() public {
	mfgaddress = msg.sender;
}
   

modifier onlymanufacturer () {
  if(msg.sender == mfgaddress) _;
}
   
    
    
 
    function addPatner(address _partnerAddress,bytes32 _partnerName,bytes32 _partnerLocation,bytes32 _role) onlymanufacturer public{
        
        partnerDetails[_partnerAddress].partnerName = _partnerName;
        partnerDetails[_partnerAddress].partnerLocation = _partnerLocation;
        partnerDetails[_partnerAddress].role = _role;
        partners.push(_partnerAddress);
    }
    
     function verifyPartner(address _partnerAddress) view public returns(bytes32, bytes32,bytes32){
        return(partnerDetails[_partnerAddress].partnerName, partnerDetails[_partnerAddress].partnerLocation, partnerDetails[_partnerAddress].role);
    }
    
    function listOfPatners() view public returns (address[] memory) {
        return partners;
    }
    
        function addProduct(bytes32 _proId,address[] memory _partAddress,bytes32 _proName,bytes32[] memory _proState,bytes32[] memory _timeStamp) public{
        
        productDetails[_proId].proName = _proName;
        productDetails[_proId].proState = _proState;
        productDetails[_proId].timeStamp = _timeStamp;
        productDetails[_proId].partAddress = _partAddress;
        products.push(_proId);
    }
 
}
 


 


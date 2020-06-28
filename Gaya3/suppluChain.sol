pragma solidity 0.5.17;

contract SupplyChain{
    
 address public mfgaddress;
 address public partnerAddress;

 struct manufacturer{
    bytes32 mfgName;
    bytes32 mfgCountry;
    
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
  

 
constructor() public {
	mfgaddress = msg.sender;
}
   

modifier onlymanufacturer () {
  if(msg.sender == mfgaddress) _;
}
   
modifier onlypartner () {
  if(msg.sender == partnerAddress) _;
}    



    function addManufacturer(address _mfgaddress,bytes32 mfgName,bytes32 mfgCountry) public{
        
        manufacturerDetails[_mfgaddress].mfgName = mfgName;
        manufacturerDetails[_mfgaddress].mfgCountry = mfgCountry;
        manufacturers.push(_mfgaddress);
    }
    
    function verifyManufacturer(address _mfgaddress) view public returns(bytes32, bytes32){
        return(manufacturerDetails[_mfgaddress].mfgName, manufacturerDetails[_mfgaddress].mfgCountry);
    }
    
    function addPatner(address _partnerAddress,bytes32 partnerName,bytes32 partnerLocation,bytes32 role) onlymanufacturer public{
        
        partnerDetails[_partnerAddress].partnerName = partnerName;
        partnerDetails[_partnerAddress].partnerLocation = partnerLocation;
        partnerDetails[_partnerAddress].role = role;
        partners.push(_partnerAddress);
        
    }
    
    function editPartner(address _partnerAddress,bytes32 partnerName,bytes32 partnerLocation,bytes32 role) onlymanufacturer public  {
	        
        partnerDetails[_partnerAddress].partnerName = partnerName;
        partnerDetails[_partnerAddress].partnerLocation = partnerLocation;
        partnerDetails[_partnerAddress].role = role;
        partners.push(_partnerAddress);
    }
    
    function verifyPartner(address _partnerAddress) view public returns(bytes32, bytes32,bytes32){
        return(partnerDetails[_partnerAddress].partnerName, partnerDetails[_partnerAddress].partnerLocation, partnerDetails[_partnerAddress].role);
    }
    
    function addProduct(bytes32 proId,address[] memory partAddress,bytes32 proName,bytes32[] memory proState,bytes32[] memory timeStamp) onlymanufacturer public{
        
        productDetails[proId].proName = proName;
        productDetails[proId].proState = proState;
        productDetails[proId].timeStamp = timeStamp;
        productDetails[proId].partAddress = partAddress;
        products.push(proId);
    }
    
    function updateProduct(bytes32 proId,bytes32[] memory proState,bytes32[] memory timeStamp) onlymanufacturer onlypartner public {
        
        productDetails[proId].proState = proState;
        productDetails[proId].timeStamp = timeStamp;     
    
    }
    
    function verifyProduc(address _partnerAddress) view public returns(bytes32, bytes32,bytes32){
        return(partnerDetails[_partnerAddress].partnerName, partnerDetails[_partnerAddress].partnerLocation, partnerDetails[_partnerAddress].role);
    }
 
}
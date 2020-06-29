pragma solidity 0.5.17;

contract SupplyChain{
    
 address public owner;
  address public manufacturerAddress;
  address public partnerAddress;
modifier onlymanufacturer() {
  if(msg.sender == manufacturerAddress) _;
}
modifier onlyPartner(){
   if(msg.sender == partnerAddress) _; 
}
 struct manufacturer{
    
    address mfgaddress;
    bytes32 mfgName;
    bytes32 mfgCountry;
    
 }
 
mapping(address=>manufacturer) manufacturerDetails;
address[] public manufacturers;
    

struct partner{
    bytes32 partnerAddress;
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
  

    function addManufacturer(address mfgaddress,bytes32 mfgName,bytes32 mfgCountry) public{
        
        // manufacturerDetails[mfgaddress].mfgaddress = mfgaddress;
        manufacturerDetails[mfgaddress].mfgName = mfgName;
        manufacturerDetails[mfgaddress].mfgCountry = mfgCountry;
        manufacturers.push(mfgaddress);
    }
    
    function verifyManufacturer(address mfgaddress) view public returns(bytes32, bytes32){
        return(manufacturerDetails[mfgaddress].mfgName, manufacturerDetails[mfgaddress].mfgCountry);
    }
    
    function addPatner(address _partnerAddress,bytes32 partnerName,bytes32 partnerLocation,bytes32 role) public onlymanufacturer() {

        partnerDetails[_partnerAddress].partnerName = partnerName;
        partnerDetails[_partnerAddress].partnerLocation = partnerLocation;
        partnerDetails[_partnerAddress].role = role;
        partners.push(_partnerAddress);

    }
    
    function editPartner(address _partnerAddress,bytes32 partnerName,bytes32 partnerLocation,bytes32 role)  public onlymanufacturer() {
	
        partnerDetails[_partnerAddress].partnerName = partnerName;
        partnerDetails[_partnerAddress].partnerLocation = partnerLocation;
        partnerDetails[_partnerAddress].role = role;
        partners.push(_partnerAddress);
    }
    
    function verifyPartner(address _partnerAddress) view public returns(bytes32, bytes32,bytes32){
        return(partnerDetails[_partnerAddress].partnerName, partnerDetails[_partnerAddress].partnerLocation, partnerDetails[_partnerAddress].role);
    }
    
    function addProduct(bytes32 proId,address[] memory partAddress,bytes32 proName,bytes32[] memory proState,bytes32[] memory timeStamp)  public onlymanufacturer(){
        
        productDetails[proId].proName = proName;
        productDetails[proId].proState = proState;
        productDetails[proId].timeStamp = timeStamp;
        productDetails[proId].partAddress = partAddress;
        products.push(proId);
    }
    
    function updateProduct(bytes32 proId,bytes32[] memory proState,bytes32[] memory timeStamp)  public onlyPartner(){
        
        productDetails[proId].proState = proState;
        productDetails[proId].timeStamp = timeStamp;     
    
    }
    
    function verifyProduct(bytes32 proId) view public returns(bytes32,bytes32[] memory,bytes32[] memory,address[]memory){
        return(productDetails[proId].proName, productDetails[proId].proState, productDetails[proId].timeStamp,productDetails[proId].partAddress);
    }
 
}
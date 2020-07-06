pragma solidity 0.5.17;

contract SupplyChain{
    
address public owner;
address public partnersAddress;
constructor() public{
	owner = msg.sender;
}
modifier onlyOwner() {
  require(msg.sender == owner);
  _;
}
modifier onlyPartner(){
     for(uint i=0;i<partners.length;i++){
         if(partners[i] == msg.sender){
             _;
         }
     }
}
struct manufacturer{
    
    address mfgaddress;
    bytes32 mfgName;
    bytes32 mfgLocation;
}
mapping(address=>manufacturer) manufacturerDetails;
address[] public manufacturers;
struct partner{
    address partnerAddress;
    bytes32 partnerName;
    bytes32 partnerLocation;
    bytes32 role;
}
mapping(address => partner) partnerDetails;
address[]  partners;
struct product{
    uint256 proId;
    bytes32 proName;
    bytes32[] proState;
    bytes32[] timeStamp;
    address[] partAddress;
}
mapping(uint256 => product) public productDetails;  
uint256[] public products;
    function addManufacturer(address mfgaddress,bytes32 mfgName,bytes32 mfgLocation) public onlyOwner(){
    manufacturerDetails[mfgaddress].mfgaddress = owner;
        manufacturerDetails[mfgaddress].mfgName = mfgName;
        manufacturerDetails[mfgaddress].mfgLocation = mfgLocation;
        manufacturers.push(owner);
    }
    function verifyManufacturer(address mfgaddress) view public returns(bytes32, bytes32){
        return(manufacturerDetails[mfgaddress].mfgName, manufacturerDetails[mfgaddress].mfgLocation);
    }
    function addPatner(address partnerAddress,bytes32 partnerName,bytes32 partnerLocation,bytes32 role) public onlyOwner() {
        partnerDetails[partnerAddress].partnerAddress = partnersAddress;
        partnerDetails[partnerAddress].partnerName = partnerName;
        partnerDetails[partnerAddress].partnerLocation = partnerLocation;
        partnerDetails[partnerAddress].role = role;
        partners.push(partnersAddress);
    }
    function editPartner(address partnerAddress,bytes32 partnerName,bytes32 partnerLocation,bytes32 role)  public onlyOwner() {
        partnerDetails[partnerAddress].partnerName = partnerName;
        partnerDetails[partnerAddress].partnerLocation = partnerLocation;
        partnerDetails[partnerAddress].role = role;
    }
    function verifyPartner(address _partnerAddress) view public returns(bytes32, bytes32,bytes32){
        return(partnerDetails[_partnerAddress].partnerName, partnerDetails[_partnerAddress].partnerLocation, partnerDetails[_partnerAddress].role);
    }
    function addProduct(uint256 proId,address[] memory partAddress,bytes32 proName,bytes32[] memory proState,bytes32[] memory timeStamp)  public onlyOwner(){
        productDetails[proId].proName = proName;
        productDetails[proId].proState = proState;
        productDetails[proId].timeStamp = timeStamp;
        productDetails[proId].partAddress = partAddress;
        products.push(proId);
    }
    function updateProduct(uint256 proId,bytes32[] memory proState,bytes32[] memory timeStamp)  public  onlyPartner() {
        productDetails[proId].proState = proState;
        productDetails[proId].timeStamp = timeStamp;     
    }
    function verifyProduct(uint256 proId) view public returns(bytes32,bytes32[] memory,bytes32[] memory,address[]memory){
        return(productDetails[proId].proName, productDetails[proId].proState, productDetails[proId].timeStamp,productDetails[proId].partAddress);
    }
}
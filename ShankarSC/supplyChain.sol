pragma solidity 0.5.17;
/*Smart Contract Title*/
  contract SupplyChain{
    address public manufacturerAddress;
    address public partnersAddress;

/*Library for manufacturer addresses assigned to a Role. manufacturer edit the Partner and update Product details.*/
  struct manufacturer{
    bytes32 mfgName;
    bytes32 mfgLocation;
    address mfgAddress;
}

/*mapping struct with address*/
   mapping(address => manufacturer) public manufacturerDetails;
   address[] public manufacturers;

/*Library for partner addresses assigned to a Role. partner update the product details.*/
  struct partner{
    bytes32 partnerName;
    bytes32 partnerLocation;
    address partnerAddress;
    bytes32 role;
}

/*mapping struct with address*/
   mapping(address => partner) public partnerDetails;
   address[]public partners;
    
/*Library for product addresses assigned to a Role.*/
  struct product{
    bytes32 proId;
    bytes32 proName;
    bytes32[] proState;
    bytes32[] timeStamp;
    address[] partAddress;
}

/*mapping struct with address*/
  mapping(bytes32 => product) public productDetails;  
  bytes32[] public productsList;

/*owner of the constructor*/
  constructor() public{manufacturerAddress = msg.sender;}
  modifier onlymanufacturer() {
  require(msg.sender == manufacturerAddress);
  _;
}

/*adding manufacturerDetails*/
  function addManufacturer(bytes32 _mfgName,bytes32 _mfgLocation,address _mfgAddress)public{
    manufacturerDetails[_mfgAddress].mfgName=_mfgName;    
    manufacturerDetails[_mfgAddress].mfgLocation=_mfgLocation;
    manufacturerDetails[_mfgAddress].mfgAddress=_mfgAddress;
    manufacturers.push(_mfgAddress);
  }
  
/*Calling manufacturerDetails*/  
  function verifyManufacturer(address mfgaddress) view public returns(bytes32, bytes32){
    return(manufacturerDetails[mfgaddress].mfgName, manufacturerDetails[mfgaddress].mfgLocation);
  }
  
/*adding partnerDetails*/  
  function addPartner(bytes32 _partnerName,bytes32 _partnerLocation,address _partnerAddress,bytes32 _role) public onlymanufacturer() {
    partnerDetails[partnersAddress].partnerAddress = _partnerAddress;
    partnerDetails[partnersAddress].partnerName = _partnerName;
    partnerDetails[partnersAddress].partnerLocation = _partnerLocation;
    partnerDetails[partnersAddress].role = _role;
    partners.push(partnersAddress);
    }
/*Edit partnerDetails*/
  function editPartner(bytes32 _partnerName,bytes32 _partnerLocation,address _partnerAddress,bytes32 _role)  public onlymanufacturer(){
    partnerDetails[partnersAddress].partnerAddress = _partnerAddress;
    partnerDetails[partnersAddress].partnerName = _partnerName;
    partnerDetails[partnersAddress].partnerLocation = _partnerLocation;
    partnerDetails[partnersAddress].role = _role;
    }
/*Calling partnerDetails*/
  function verifyPartner(address _partnerAddress) view public returns(bytes32, bytes32,bytes32){
        return(partnerDetails[_partnerAddress].partnerName, partnerDetails[_partnerAddress].partnerLocation, partnerDetails[_partnerAddress].role);
    }
    
/*Adding productDetails*/
  function addProduct(bytes32 _proId,bytes32 _proName,bytes32[] memory _proState,bytes32[] memory _timeStamp,address[] memory _partAddress) public onlymanufacturer(){
    productDetails[_proId].proName = _proName;
    productDetails[_proId].proState = _proState;
    productDetails[_proId].timeStamp = _timeStamp;
    productDetails[_proId].partAddress = _partAddress;
    productsList.push(_proId);
    }

modifier onlyPartner(){
  require(msg.sender == partnersAddress);
  _; 
}    

/*Update productDetails*/
  function updateProduct(bytes32 _proId,bytes32[] memory _proState,bytes32[] memory _timeStamp)  public onlyPartner() {
    productDetails[_proId].proState = _proState;
    productDetails[_proId].timeStamp = _timeStamp;     
    }
    function verifyProduct(bytes32 _proId) view public returns(bytes32,bytes32[] memory,bytes32[] memory,address[]memory){
        return(productDetails[_proId].proName, productDetails[_proId].proState, productDetails[_proId].timeStamp,productDetails[_proId].partAddress);
    }
} 
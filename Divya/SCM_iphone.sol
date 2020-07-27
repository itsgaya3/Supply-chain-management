pragma solidity 0.5.17;

/*iPhone7 Supply Chain */

contract SCM {
    address public manufacturerAddress; /* manufacturer update the partner details*/
    uint256 public proId;
    /* restricting the users or partners to edit or add the details.Only manufacturerAddress can add or edit*/

    constructor() public {
        manufacturerAddress = msg.sender;
        proId = 34567;
    }

    /*if msg.sender is equals to owner(manufacturer) then able to push the data, if not the below error will pop */
    modifier onlymanufacturer() {
        require(
            msg.sender == manufacturerAddress,
            "you can't update or edit the details"
        );
        _;
    }
    /*Only partner can access and able to push the data, if not the below error will pop */
    modifier onlypartner() {
        for(uint256 i=0;i<partnerDetails.length;i++){
            require(msg.sender != manufacturerAddress,
            "Only Partner can add or update the part details"
        );
        _;
        
        }
    }

    struct manufacturer {
        bytes32 mfgName;
        bytes32 mfgLocation;
        address mfgAddress; /* mfgAddress means eth address */
    }
    mapping(address => manufacturer) public mfgAddress;
    address[] public mfgDetails;

    struct partner {
        bytes32 partnerName;
        bytes32 partnerLocation;
        address partnerAddress;
        bytes32 role;/* 0-Supplier,1-Assembly,2-Distributor,3-Retailor*/
    }
    mapping(address => partner) public partnerAddress;
    address[] public partnerDetails;

    struct product {
        bytes32 proName; 
        bytes32[] proState; /* 0-onhold,1-pemding,2-Inprogress,3-completed*/
        bytes32[] timeStamp;
        address[] partAddress;
    }
    mapping(uint256 => product) public Products;
    uint256[] public proDetails;

    /* Adding the manufacturerdetails by Owner */

    function addManufacturer(bytes32 _mfgName,bytes32 _mfgLocation,address _mfgAddress) public onlymanufacturer {
        mfgAddress[_mfgAddress].mfgName = _mfgName;
        mfgAddress[_mfgAddress].mfgLocation = _mfgLocation;
        mfgAddress[_mfgAddress].mfgAddress = _mfgAddress;

        mfgDetails.push(_mfgAddress);
    }
    function verifyManufacturer(address _mfgAddress) view public returns(bytes32 _mfgName,bytes32 _mfgLocation){
        return (mfgAddress[_mfgAddress].mfgName,mfgAddress[_mfgAddress].mfgLocation);
    }

    /*Adding multiple partner details by manufacturer*/

    function addPartner(bytes32 _partnerName,bytes32 _partnerLocation,address _partnerAddress,bytes32 _role) public onlymanufacturer {
        partnerAddress[_partnerAddress].partnerName = _partnerName;
        partnerAddress[_partnerAddress].partnerLocation = _partnerLocation;
        partnerAddress[_partnerAddress].partnerAddress = _partnerAddress;
        partnerAddress[_partnerAddress].role = _role;

        partnerDetails.push(_partnerAddress);
    } 
    /*Editing multiple partner details by manufacturer*/
    function updatePartnerDetails(
        bytes32 _partnerName,
        bytes32 _partnerLocation,
        address _partnerAddress,
        bytes32 _role
    ) public onlypartner {
        partnerAddress[_partnerAddress].partnerName = _partnerName;
        partnerAddress[_partnerAddress].partnerLocation = _partnerLocation;
        partnerAddress[_partnerAddress].partnerAddress = _partnerAddress;
        partnerAddress[_partnerAddress].role = _role;
    }
    function verifyPartner(address _partnerAddress) view public returns(bytes32 _partnerName,bytes32 _partnerLocation,bytes32 _role){
        return (partnerAddress[_partnerAddress].partnerName,partnerAddress[_partnerAddress].partnerLocation,partnerAddress[_partnerAddress].role);
    }
     /*Adding the products*/

    /*Adding products screen ,battery,motherboard details by manufacturer or partner*/

    function addProduct(
        bytes32 _proName,
        bytes32[] memory _proState,
        bytes32[] memory _timeStamp,
        address[] memory _partAddress
    ) public onlymanufacturer {
        /*Only manufacturer are allowed to add the details*/
        proId++;
        Products[proId].proName = _proName;
        Products[proId].proState = _proState;
        Products[proId].timeStamp = _timeStamp;
        Products[proId].partAddress = _partAddress;
        proDetails.push(proId);
    }
       /*Product details will be displaied based on proId*/

    function updateProduct(
        uint256 _proId,
        bytes32[] memory _proState,
        bytes32[] memory _timeStamp
    ) public onlypartner {
        /*Only partner allowed to make the changes.*/
        Products[_proId].proState= _proState;
        Products[_proId].timeStamp = _timeStamp;
        proDetails.push(proId);
     }
    function verifyProduct(uint256 _proId) view public returns(
    
        bytes32 _proName,
        bytes32[] memory _proState,
        bytes32[] memory _timeStamp,
        address[] memory _partAddress){
        return (Products[_proId].proName,Products[_proId].proState,Products[_proId].timeStamp,Products[_proId].partAddress);
    }
 }
 /* Complete input details will be displayed in the verify manufacture,verify partner,verify product which 
can be used for the backend script.*/

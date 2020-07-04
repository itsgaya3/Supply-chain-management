var  contractAddress = "0x38e10ad3634f1a243c96e05bc2b04393e8d36854";
var accounts;
abi = [
	{
		"constant": false,
		"inputs": [
			{
				"internalType": "address",
				"name": "mfgaddress",
				"type": "address"
			},
			{
				"internalType": "bytes32",
				"name": "mfgName",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "mfgLocation",
				"type": "bytes32"
			}
		],
		"name": "addManufacturer",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"internalType": "address",
				"name": "partnerAddress",
				"type": "address"
			},
			{
				"internalType": "bytes32",
				"name": "partnerName",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "partnerLocation",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "role",
				"type": "bytes32"
			}
		],
		"name": "addPatner",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"internalType": "bytes32",
				"name": "proId",
				"type": "bytes32"
			},
			{
				"internalType": "address[]",
				"name": "partAddress",
				"type": "address[]"
			},
			{
				"internalType": "bytes32",
				"name": "proName",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32[]",
				"name": "proState",
				"type": "bytes32[]"
			},
			{
				"internalType": "bytes32[]",
				"name": "timeStamp",
				"type": "bytes32[]"
			}
		],
		"name": "addProduct",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"internalType": "address",
				"name": "partnerAddress",
				"type": "address"
			},
			{
				"internalType": "bytes32",
				"name": "partnerName",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "partnerLocation",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "role",
				"type": "bytes32"
			}
		],
		"name": "editPartner",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"constant": false,
		"inputs": [
			{
				"internalType": "bytes32",
				"name": "proId",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32[]",
				"name": "proState",
				"type": "bytes32[]"
			},
			{
				"internalType": "bytes32[]",
				"name": "timeStamp",
				"type": "bytes32[]"
			}
		],
		"name": "updateProduct",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "manufacturerAddress",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"name": "manufacturers",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"name": "partners",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "partnersAddress",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"internalType": "bytes32",
				"name": "",
				"type": "bytes32"
			}
		],
		"name": "productDetails",
		"outputs": [
			{
				"internalType": "bytes32",
				"name": "proId",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "proName",
				"type": "bytes32"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"name": "products",
		"outputs": [
			{
				"internalType": "bytes32",
				"name": "",
				"type": "bytes32"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"internalType": "address",
				"name": "mfgaddress",
				"type": "address"
			}
		],
		"name": "verifyManufacturer",
		"outputs": [
			{
				"internalType": "bytes32",
				"name": "",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "",
				"type": "bytes32"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"internalType": "address",
				"name": "_partnerAddress",
				"type": "address"
			}
		],
		"name": "verifyPartner",
		"outputs": [
			{
				"internalType": "bytes32",
				"name": "",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "",
				"type": "bytes32"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"internalType": "bytes32",
				"name": "proId",
				"type": "bytes32"
			}
		],
		"name": "verifyProduct",
		"outputs": [
			{
				"internalType": "bytes32",
				"name": "",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32[]",
				"name": "",
				"type": "bytes32[]"
			},
			{
				"internalType": "bytes32[]",
				"name": "",
				"type": "bytes32[]"
			},
			{
				"internalType": "address[]",
				"name": "",
				"type": "address[]"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	}
];

window.addEventListener('load',async()=>{

	if(window.ethereum){
		window.web3 = new Web3(ethereum);

		try{
			await ethereum.enable();

			if(typeof web3 !== "undefined"){
				web3 = new Web3(web3.currentProvider);
			}else{
				web3 = new Web3(new Web3.providers.HttpProvider("https://rinkeby.infura.io/v3/37adf31dd7164cd1995d21a8eb24c671"));
			}

			SupplyChain = await new web3.eth.Contract(abi,contractAddress);
			accounts = await web3.eth.getAccounts();
			console.log(accounts);
			web3.eth.defaultAccount = accounts[0];
			console.log(web3.eth.defaultAccount);
		}catch (error){
			console.log(error);
		}
		
	}else if(window.web3){
		window.web3 = new Web3(web3.currentProvider);
	}else{
		alert("Non-ethereum browser detected,Try using MetMask");
	}
	
});

	$('#userDetails').click(function(){
	console.log("iam an issue function");
	var mfgaddress = $('#mfgaddress').val();
	var mfgName = $('#mfgName').val();
	var mfgLocation = $('#mfgLocation').val();

	SupplyChain.methods
		.addManufacturer(mfgaddress,partAddress,web3.utils.fromAscii(mfgName),web3.utils.fromAscii(mfgLocation))
		.send({from: web3.eth.defaultAccount})
		.on('receipt', function(receipt){
			console.log(receipt);
		});

	});


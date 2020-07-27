var contractAddress = "[0x9b0BD394938D1DC2fBA4d0f11fb21e964C3588Cd]";
var abi = [
	{
		"constant": false,
		"inputs": [
			{
				"internalType": "bytes32",
				"name": "_mfgName",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "_mfgLocation",
				"type": "bytes32"
			},
			{
				"internalType": "address",
				"name": "_mfgAddress",
				"type": "address"
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
				"internalType": "bytes32",
				"name": "_partnerName",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "_partnerLocation",
				"type": "bytes32"
			},
			{
				"internalType": "address",
				"name": "_partnerAddress",
				"type": "address"
			},
			{
				"internalType": "bytes32",
				"name": "_role",
				"type": "bytes32"
			}
		],
		"name": "addPartner",
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
				"name": "_proName",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32[]",
				"name": "_proState",
				"type": "bytes32[]"
			},
			{
				"internalType": "bytes32[]",
				"name": "_timeStamp",
				"type": "bytes32[]"
			},
			{
				"internalType": "address[]",
				"name": "_partAddress",
				"type": "address[]"
			}
		],
		"name": "addProduct",
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
				"name": "_partnerName",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "_partnerLocation",
				"type": "bytes32"
			},
			{
				"internalType": "address",
				"name": "_partnerAddress",
				"type": "address"
			},
			{
				"internalType": "bytes32",
				"name": "_role",
				"type": "bytes32"
			}
		],
		"name": "updatePartnerDetails",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_proId",
				"type": "uint256"
			},
			{
				"internalType": "bytes32[]",
				"name": "_proState",
				"type": "bytes32[]"
			},
			{
				"internalType": "bytes32[]",
				"name": "_timeStamp",
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
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"name": "mfgAddress",
		"outputs": [
			{
				"internalType": "bytes32",
				"name": "mfgName",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "mfgLocation",
				"type": "bytes32"
			},
			{
				"internalType": "address",
				"name": "mfgAddress",
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
		"name": "mfgDetails",
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
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"name": "partnerAddress",
		"outputs": [
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
				"internalType": "address",
				"name": "partnerAddress",
				"type": "address"
			},
			{
				"internalType": "bytes32",
				"name": "role",
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
		"name": "partnerDetails",
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
		"name": "proDetails",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
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
		"name": "Products",
		"outputs": [
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
		"inputs": [],
		"name": "proId",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
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
				"name": "_mfgAddress",
				"type": "address"
			}
		],
		"name": "verifyManufacturer",
		"outputs": [
			{
				"internalType": "bytes32",
				"name": "_mfgName",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "_mfgLocation",
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
				"name": "_partnerName",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "_partnerLocation",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "_role",
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
				"name": "_proId",
				"type": "uint256"
			}
		],
		"name": "verifyProduct",
		"outputs": [
			{
				"internalType": "bytes32",
				"name": "_proName",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32[]",
				"name": "_proState",
				"type": "bytes32[]"
			},
			{
				"internalType": "bytes32[]",
				"name": "_timeStamp",
				"type": "bytes32[]"
			},
			{
				"internalType": "address[]",
				"name": "_partAddress",
				"type": "address[]"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	}
]

console.log(contractAddress);

window.addEventListener('load',async()=> {
    if(window.ethereum){

        window.web3 = new Web3(ethereum);
        try{
				await ethereum.enable();
				if(typeof web3 !== "undefined"){
					web3 = new Web3(web3.currentProvider);
					}else {
					web3 = new Web3(new Web3.providers.HttpProvider("https://rinkeby.infura.io/v3/3162d4cfe26a418a9c3b1237cb18546a"))
			}
			
			SCM = await new web3.eth.Contract(abi, contractAddress);
            
            accounts = await web3.eth.getAccounts();
            console.log(accounts);   
            web3.eth.defaultAccount = accounts[0];
			console.log(web3.eth.defaultAccount);
      
        } catch (error){
            console.log("error");
        }

        
     } else if(window.web3){
        window.web3 = new web3(web3.currentProvider);
    } else{
        alert("Try using Metamask browser");
        console.log("no ethereum in the browser");
    }
});
async function addtoBlockchain(){
	console.log("i am working")
}

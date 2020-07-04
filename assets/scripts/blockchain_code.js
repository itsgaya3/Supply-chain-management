var contractAddress = "";
var abi = 

console.log(contractAddress);

window.addEventListener('load',async()=> {
    if(window.ethereum){

        window.web3 = new Web3(ethereum);
        try{
				await ethereum.enable();
				if(typeof web3 !== "undefined"){
					web3 = new Web3(web3.currentProvider);
					}else {
					web3 = new Web3(new Web3.providers.HttpProvider("https://rinkeby.infura.io/v3/a518d32cdcf2497994f77be0ee9c7471"))
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

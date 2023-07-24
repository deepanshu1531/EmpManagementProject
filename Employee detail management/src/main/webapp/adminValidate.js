adminFormValidation=(formName)=>{
	let flag=true;
	console.log("Here")
	
	let unameField= document.forms[formName]["uname"].value;
	if (unameField != "") {
    	let uf=unameField.split(" ");
		for(let i=0;i<uf.length;i++){
		    for(let j=0;j<uf[i].length;j++){
		        if(uf[i].charAt(j).toUpperCase()==uf[i].charAt(j).toLowerCase()){
		            alert("Please enter a valid username.");
			  			flag=false;
		      			return flag;
		        }
		    } 
		}  	
  	}
  	else{
	  alert("User Name must be filled out");
	  flag=false;
      return flag;
  	}
  	
  	let passField= document.forms[formName]["pass"].value;
  	if(passField == ""){
		  	console.log("in if")
		  	alert("Password must be filled out");
	  		flag=false;
      		return flag;
	  }
}

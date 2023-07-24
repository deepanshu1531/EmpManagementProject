empFormValidation=(formName)=>{
	let flag=true;
	console.log("Here")
	
	let nameField= document.forms[formName]["name"].value;
	if (nameField != "") {
    	let nf=nameField.split(" ");
		for(let i=0;i<nf.length;i++){
		    for(let j=0;j<nf[i].length;j++){
		        if(nf[i].charAt(j).toUpperCase()==nf[i].charAt(j).toLowerCase()){
		            alert("Please enter a valid name.");
			  			flag=false;
		      			return flag;
		        }
		    } 
		}  	
  	}
  	else{
	  alert("Name must be filled out");
	  flag=false;
      return flag;
  	}
  	
  	let ageField= document.forms[formName]["age"].value;
	if (ageField != "") {
    	for(let i=0;i<ageField.length;i++){
			if(ageField[i].toUpperCase()!=ageField[i].toLowerCase()){
				alert("Please enter valid age.");
	  			flag=false;
      			return flag;
			}
		}    	
  	}
  	else{
	  alert("Please enter valid age");
	  flag=false;
      return flag;
  	}
  	
  	let mobField= document.forms[formName]["mob"].value;
	if (mobField != "" && mobField.length == 10) {
    	for(let i=0;i<mobField.length;i++){
			if(mobField[i].toUpperCase()!=mobField[i].toLowerCase()){
				alert("Please enter a valid mobile number.");
	  			flag=false;
      			return flag;
			}
		}    	
  	}
  	else{
	  alert("Please enter a valid mobile number.");
	  flag=false;
      return flag;
  	}
  	
  	let addField= document.forms[formName]["add"].value;
	if (addField == "") {
    	alert("Address must be filled out");
	  	flag=false;
      	return flag; 	
  	}
  	
}



    
    
  
	 function isValidEmail(email) {
            // Regular expression for a basic email validation
            var emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            return emailRegex.test(email);
        }

        function validateAndAlert() {
            var email = document.getElementById("email").value;
            var resultContainer = document.getElementById("validationResult");

            if (!isValidEmail(email)) {
                resultContainer.innerHTML = "Invalid email address";
            } else {
                resultContainer.innerHTML = "Email is valid!";
            }


        }
        
        function enableButton() {
  			if (document.getElementById("confirmCheckbox").checked) {
    			document.getElementById("submitButton").disabled = false;
    			 submitButton.style.opacity = "1";
  			} else {
   				 document.getElementById("submitButton").disabled = true;
   				  submitButton.style.opacity = "0.5";
  }
}


/**
 * 
 */
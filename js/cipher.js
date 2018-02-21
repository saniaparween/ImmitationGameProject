$(document).ready(function() {
	
	
    function isEmpty(str) {
        return (!str || 0 === str.length);
    }
	 
	
    $("#ceaserCipher").submit(function(e) {
		
		 e.preventDefault();
		 
		var ceaserInput = $("#ceaserInput").val();
		var ceaserKey = $("#ceaserKey").val();

		
		if (isEmpty(ceaserInput) || isEmpty(ceaserKey)) {
            $('#inputEmptyError').show();
            return -1;
        }

       
        $.ajax({

            Type: "POST",
            url: "/jsp/CipherToolsAnswer.jsp",
            data: 
                $("#ceaserCipher").serialize(),
				
         
            success: function(data)	{
				console.log("Inside success in cipher.js");
                var response = JSON.parse(data);
				
				var decryptedCeaserCipher = response.decryptedCeaserCipher;
				$("#decryptedCeaserCipher").text("Decrypted Text : " + decryptedCeaserCipher);
              
            }
        });
    });
});
$(document).ready(function(){
	$("#CeaserSubmit").click(function(e) {

		e.preventDefault();

		$.ajax({

			Type:"POST",
			url:"/jsp/CipherToolsAnswer.jsp",
			data:{ CeaserInput: $("#CeaserInput").val()
				 },
			success:function(data){
				var response = JSON.parse(data);
				alert(response);

			}
		});
	});
});

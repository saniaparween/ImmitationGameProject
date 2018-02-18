$(document).ready(function() {

    //register the team

    function isEmpty(str) {
        return (!str || 0 === str.length);
    }
    $("#rc-form").submit(function(e) {

        e.preventDefault(); // avoid to execute the actual submit of the form.

        var agent1 = $("#agentName1").val();
        var agent2 = $("#agentName2").val();
        if (isEmpty(agent1) || isEmpty(agent2)) {
            $('#nameEmptyError').show();
            return -1;
        }
        var url = "/jsp/register.jsp"; //register the candidates

        $.ajax({
            type: "POST", //method POST
            url: url,
            data: $("#rc-form").serialize(), // serializes the form's elements.
            success: function(data) {
                console.log("Response:" + data); // show response
                var response = JSON.parse(data);
                console.log("Message" + response.message);
                if (response.status == 0) {
                    var redirectUrl = response.redirectUrl;
                    var delay = 1000;
                    setTimeout(function() {
                        window.location = redirectUrl;
                    }, delay);
                }
            },
            error: function(xhr, textStatus, errorThrown) {
                alert('Error!  Status = ' + xhr.status);
            }
        });
    });
});
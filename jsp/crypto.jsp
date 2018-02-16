<%@page contentType="text/html"%>

<%@page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@page import="org.json.simple.JSONObject"%>

<%@include file="/jsp/sessionsUtil.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>The Imitation Game!</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../css/timer.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body>
	<h1>Don't Panic</h1>
	<div id="clockdiv">
	  <div style="display: none;">
	    <span class="days"></span>
	    <div class="smalltext">Days</div>
	  </div>
	  <div style="display: none;">
	    <span class="hours"></span>
	    <div class="smalltext">Hours</div>
	  </div>
	  <div>
	    <span class="minutes"></span>
	    <div class="smalltext">Minutes</div>
	  </div>
	  <div>
	    <span class="seconds"></span>
	    <div class="smalltext">Seconds</div>
	  </div>
	</div>
	<h2 id='levelTitle'></h2>
	<div style="">
    	<span id='agent1' ></span>
    	<span id='agent2' ></span>
	</div>

<jsp:include page="${levelJspFileName}"></jsp:include>


<script type="text/javascript">

function getTimeRemaining(endtime) {
  var t = Date.parse(endtime) - Date.parse(new Date());
  var seconds = Math.floor((t / 1000) % 60);
  var minutes = Math.floor((t / 1000 / 60) % 60);
  var hours = Math.floor((t / (1000 * 60 * 60)) % 24);
  var days = Math.floor(t / (1000 * 60 * 60 * 24));
  return {
    'total': t,
    'days': days,
    'hours': hours,
    'minutes': minutes,
    'seconds': seconds
  };
}

function initializeClock(id, endtime) {
  var clock = document.getElementById(id);
  var daysSpan = clock.querySelector('.days');
  var hoursSpan = clock.querySelector('.hours');
  var minutesSpan = clock.querySelector('.minutes');
  var secondsSpan = clock.querySelector('.seconds');

  function updateClock() {
    var t = getTimeRemaining(endtime);

    daysSpan.innerHTML = t.days;
    hoursSpan.innerHTML = ('0' + t.hours).slice(-2);
    minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);
    secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);

    if (t.total <= 0) {
      clearInterval(timeinterval);
    }
  }

  updateClock();
  var timeinterval = setInterval(updateClock, 1000);
}

$(document).ready(function(){

	function updateStatus() {
		var url = "/jsp/status.jsp";

	    $.ajax({
	           type: "GET",
	           url: url,
	           data: '',
	           success: function(data)
	           {
	               // console.log("Response status info:" + data);
	               var response = JSON.parse(data);
				   if(response.hasOwnProperty('status')){
						if (response.status == -1){
							var redirectUrl = response.redirectUrl;
							var delay = 1000;
							setTimeout(function(){ window.location = redirectUrl; }, delay);
							return false;
						}
				   }
	               var endTime = response.endTime;
	               var level = response.level;
	               var agent1 = response.agentName1;
	               var agent2 = response.agentName2;
	               $("#levelTitle").text("Your current level : " + level);
	               $("#agent1").text("Agent 1 : " + agent1);
	               $("#agent2").text("Agent 2 : " + agent2);
	               var deadline = new Date(response.endTime);
	               initializeClock('clockdiv', deadline);
	           },
	           error: function(xhr, textStatus, errorThrown) {
	                alert('Error!  Status = ' + xhr.status);
	           }
	    });
    }

    updateStatus();
    setInterval(updateStatus, 2000);
});


$(document).ready(function(){

	$("#button").click(function(e) {

		e.preventDefault();

		$.ajax({

			Type:"POST",
			url:"/jsp/CheckingInputString.jsp",
			data:{ comment: $("#comment").val()
				 },
			success:function(data){
				var response = JSON.parse(data);

				if(response.status==0){
					console.log("Inside success in level 1 when status is 0(correct ans");// a check to see whether if statement is executing or not
					alert('Correct Answer');
					var redirectUrl = response.redirectUrl;
					window.location = redirectUrl;
				}

				if(response.status == -1){
					console.log("Inside success in level 1 when status is -1(wrong ans)");// a check to see whether if statement is executing or not
					alert('InCorrect Answer');
				}
			}
		});
	});
});

</script>

</body>
</html>
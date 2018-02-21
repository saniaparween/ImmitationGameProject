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
    var timeinterval = setInterval(updateClock, 2000);
}

$(document).ready(function() {

    function updateStatus() {
        var url = "/jsp/status.jsp";

        $.ajax({
            type: "GET",
            url: url,
            data: '',
            success: function(data) {
                // console.log("Response status info:" + data);
                var response = JSON.parse(data);
                if (response.hasOwnProperty('status')) {
                    if (response.status == -1) {
                        var redirectUrl = response.redirectUrl;
                        var message = response.message;
                        alert(message);
                        window.location = redirectUrl;
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
    setInterval(updateStatus, 500);

    $("#button").click(function(e) {

        e.preventDefault();

        $.ajax({

            Type: "POST",
            url: "/jsp/checkingInputString.jsp",
            data: {
                comment: $("#comment").val()
            },
            success: function(data) {
                var response = JSON.parse(data);

                if (response.status == 0) {
                    console.log("Inside success in level 1 when status is 0(correct ans"); // a check to see whether if statement is executing or not
                    alert('Correct Answer');
                    var redirectUrl = response.redirectUrl;
                    window.location = redirectUrl;
                }

                if (response.status == -1) {
                    console.log("Inside success in level 1 when status is -1(wrong ans)"); // a check to see whether if statement is executing or not
                    alert('Incorrect Answer \nPlease try again. Good Luck!');
                }
            }
        });
    });
});
<%@page contentType="text/html"%>

<%@page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@page import="org.json.simple.JSONObject"%>

<%-- Include header file --%>
<%@include file="/jsp/header.jsp" %>

<div class="container-fluid" id="welcomeintro" >
    <div class="row" style="padding-top:30px;   text-align:center;">
        <div class="container">
            <div class="col-xs-12" style="padding-top:10px; ">
                <h1 style="padding-top:20px; font-size:25px; color : #00c1ef;"><strong>DECRYPT | DECODE | DECIPHER</strong></h1>
                <p style="padding-top:35px; font-size:20px; color : yellow;">Get ready to put your cryptography skills into use</p>
                <h1 style="padding-top:45px; font-size:35px; color : #00c1ef;"><strong>About the event</strong></h1>
                <p style="padding-top:45px; font-size:20px; color : yellow; ">Welcome on Board! Based on your high intelligence and great alertness of mind The Govt of India has chosen you to be a part of their Research Analysis WingAs part of the RAW, you guys will have to perform certain tasks assigned to you. So, here's your first assignment as a RAW agent. Best of Luck mates!</p>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid" id="desc">
    <div class="container" >
        <div class="row">
            <div class="col-xs-12" style="padding-top:10px;">
                <h1 style=" font-size:30px; color : #00c1ef;">A little background into the event</h1>
                <p style="padding-top:35px; font-size:20px; color : yellow;">The RAW of India while in their continuous monitoring of activities and events have come across something  which appears to be dubious and suspicious. The senior RAW analyst Mr. Shiv Prasad Raman believes the activity has some  terror roots and a quick analysis needs to be made into the situation. While there are other agents working out there collecting information, your task is smartly analyse and pass on the valuable information to your higher authorities.
                <div class="container">
                    <div class="col-xs-12" style="padding-top:10px;">
                        <h1 style="padding-top:40px; font-size:25px; color : #00c1ef;"><strong>Two events have occured so far</strong></h1>
                        <ol class="list-group" style="padding-top:40px; ">
                            <li class="list-group-item" style="color:white; background-color:black; font-size:20px;">A connection was compromised and the conversation between the two IP Addresses has been traced. </li>
                            <li class="list-group-item" style="color:white; background-color:black; font-size:20px;">Our one Indian Spy has passed on some other valuable information.</li>
                        </ol>
                    </div>
                </div>
                </p>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid" id="welcomeparallax1"></div>
<div class="container-fluid" id="rules">
    <div class="row" style="padding-top:30px; padding:bottom:30px;  text-align:center;">
        <div class="container">
            <div class="col-xs-12" style="padding-top:10px;">
                <h1 style="padding-top:40px; font-size:25px; color : white;"><strong>Rules and Regulations </strong></h1>
                <ul class="list-group" style="padding-top:40px; ">
                    <li class="list-group-item" style="color:#90f6ff  ; background-color:black; font-size:20px;">A team may consist of either one member or two. However, a two members team is preferable. </li>
                    <li class="list-group-item" style="color:#fff620; background-color:black; font-size:20px;">Each team member needs to individually register for the event.</li>
                    <li class="list-group-item" style="color:#90f6ff; background-color:black; font-size:20px;">The event will consist of three rounds. Entry to the next subsequent round depends on the successful qualification of the previous round.</li>
                    <li class="list-group-item" style="color:#fff620; background-color:black; font-size:20px;">Each round will comprise of a plot involving encrypted texts and hidden meanings. You will need to decipher the meaning and answer the questions based on it.</li>
                    <li class="list-group-item" style="color:#90f6ff; background-color:black; font-size:20px;">In case of a tie, the tie will be broken by the respective time taken by the individual team to correctly solve the problems.</li>
                    <li class="list-group-item" style="color:#fff620; background-color:black; font-size:20px;">No electronic gadgets except the ones provided by the coordinators such as desktops will be allowed.</li>
                    <li class="list-group-item" style="color:#90f6ff; background-color:black; font-size:20px;">In case of any discrepancies, the decision of the coordinators will be final.</li>
                    <li class="list-group-item" style="color:#fff620; background-color:black; font-size:20px;">The coordinators of the event possess the rights to change and modify the rules of the event at any time.</li>
                    </li></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--<div class="container-fluid" id="parallax2"></div> -->
<div class="container-fluid" id="reg" >
    <div class="row">
        <div class="col-xs-6">
            <h1 id="heading2" style=" font-size:45px; text-align:center; color :#00c1ef;">Want to join the  R.A.W ?</h1>
            <h1 id="heading3" style=" font-size:45px; color : #00c1ef; text-align:center;">Enter your details</h1>
            <form id='rc-form' class="form-inline text-center" >
                <div class="form-group">
                    <label for="agent1" style="padding-top:40px; font-size:30px; color : yellow;">Agent 1 : </label>
                    <input type="text" id="agentName1" name="agentName1" class="form-control" id="email" placeholder="Enter your name">
                </div>
                <br>
                <div class="form-group">
                    <label for="agent2" style="padding-top:40px; font-size:30px; color : yellow;">Agent 2 : </label>
                    <input type="text" id="agentName2" name="agentName2" class="form-control" id="pwd" placeholder="Enter your name">
                </div>
                <br>
                <span class='errorSpan' id="nameEmptyError" style="display:none;">Dude/Dudes we need your agent names. You can be Sherlock Holmes &#x1F609;</span>
                <button type="submit" class="btn btn-primary btn-md center-block" style="margin-top:40px; margin-bottom:40px; ">Roll In!</button>
            </form>
        </div>
        <div class="col-xs-6" style="margin-top:55px;">
            <img class="img-responsive img-circle" style="border-radius: 2%;" src="../images/hackers.jpg">
        </div>
    </div>
</div>
<div class="container-fluid" id="welcomeparallax3"></div>
<script src="../js/welcome.js"></script>
<div class="container-fluid" style="background-color:black; padding:10%;">
    <div class="row">
        <div class="col-xs-4"></div>
        <div class="col-xs-4">
            <h1 id="heading2" style=" font-size:30px; text-align:center; color :#00c1ef;">Get a tour of the crypto Tools !</h1>
            <a href="../jsp/cipherTools.jsp"><img class="img-responsive" src="../images/start2.jpg"></a>
        </div>
        <div class="col-xs-4"></div>
    </div>
</div>

<%-- Include footer file --%>
<%@include file="/jsp/footer.jsp" %>

<%@page contentType="text/html"%>

<%@page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@page import="org.json.simple.JSONObject"%>

<%-- Include header file --%>
<%@include file="/jsp/header.jsp" %>

<div class="flex-container" style="background:url('../images/header.jpg'); padding:1%;">
    <div class="row" style="text-align:center;">
        <div class="col-xs-12" style="padding-top:5px;">
            <header>
                <h1 id="head-text" style=" font-size:50px; color :white ;">Team Bits 2 Bytes '18 Presents</h1>
                <h1 style=" font-size:30px; color : #00c1ef;">The Imitation Game</h1>
            </header>
        </div>
    </div>
</div>
<div class="container-fluid" id="intro" >
    <div class="row" style="padding-top:30px;   text-align:center;">
        <div class="container">
            <div class="col-xs-12" style="padding-top:10px; ">
                <h1 style="padding-top:20px; font-size:35px; color : #00c1ef;"><strong>Debug | Decode | Decrypt</strong></h1>
                <p style="padding-top:35px; font-size:20px; color : yellow;">Get ready to put your cryptography skills into use</p>
                <h1 style="padding-top:45px; font-size:35px; color : #00c1ef;"><strong>About the event</strong></h1>
                <p style="padding-top:45px; font-size:20px; color : yellow; ">You will be given a plot cipher above and make a meaningful sentence out of it? Well if you can then you are made for this event. In this event you need to be calm and gather all your wits to make meaning of most of the questions. Get ready for a cryptic experience!!!</p>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid" id="parallax1"></div>
<div class="container-fluid" id="rules">
    <div class="row" style="padding-top:30px; padding:bottom:30px;  text-align:center;">
        <div class="container">
            <div class="col-xs-12" style="padding-top:10px;">
                <h1 style="padding-top:40px; font-size:25px; color : white;"><strong>Rules and Regulations </strong></h1>
                <ul class="list-group" style="padding-top:40px; ">
                    <li class="list-group-item" style="color:#90f6ff  ; background-color:black; font-size:20px;">Each team can have either 1 or 2 members. </li>
                    <li class="list-group-item" style="color:#fff620; background-color:black; font-size:20px;">Various questions involving ciphers and steganography will be provided to you. You will simply have to give us the flags, which will be hidden within the questions. </li>
                    <li class="list-group-item" style="color:#90f6ff; background-color:black; font-size:20px;">Knowledge of computer programming won’t be required to solve the problems, although it may help to solve some problems faster. </li>
                    <li class="list-group-item" style="color:#fff620; background-color:black; font-size:20px;">The event will be conducted on a windows machineTeams won’t be allowed to use any external electronic devices. </li>
                    <li class="list-group-item" style="color:#90f6ff; background-color:black; font-size:20px;">Internet access may be provided to the participants if the co-ordinators decide that any question will require it. In case it is not provided, we will provide you with almost all the knowledge, you will require to crack the questions. </li>
                    <li class="list-group-item" style="color:#fff620; background-color:black; font-size:20px;">In the event of a tie, the team to solve the most difficult questions first will be considered the winner. </li>
                    <li class="list-group-item" style="color:#90f6ff; background-color:black; font-size:20px;">The co-ordinators have the right to change the rules and judging criteria of the contest at any time they deem fit. </li>
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
                <span class='errorSpan' id="nameEmptyError" style="display:none;">Dude/Dudess we need your agent names. You can be Sherlock Holmes &#x1F609;</span>
                <button type="submit" class="btn btn-primary btn-md center-block" style="margin-top:40px; margin-bottom:40px; ">Roll In!</button>
            </form>
        </div>
        <div class="col-xs-6" style="margin-top:55px;">
            <img class="img-responsive img-circle" style="border-radius: 2%;" src="../images/hackers.jpg">
        </div>
    </div>
</div>
<div class="container-fluid" id="parallax3"></div>
<div class="container-fluid" style="background-color:black; padding:10%;">
    <div class="row">
        <div class="col-xs-4"></div>
        <div class="col-xs-4">
            <h1 id="heading2" style=" font-size:30px; text-align:center; color :#00c1ef;">Click on the power button to start !</h1>
            <a href="/test1.jsp"><img class="img-responsive" src="../images/start2.jpg"   ></a>
        </div>
        <div class="col-xs-4"></div>
    </div>
</div>

<script src="../js/welcome.js"></script>

<%-- Include footer file --%>
<%@include file="/jsp/footer.jsp" %>

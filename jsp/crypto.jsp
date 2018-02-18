<%@page contentType="text/html"%>

<%@page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@page import="org.json.simple.JSONObject"%>

<%@include file="/jsp/sessionsUtil.jsp" %>

<%-- Include header file --%>
<%@include file="/jsp/header.jsp" %>

<%-- Timer html code starts here --%>
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
<%-- Timer html code ends here --%>
<h2 id='levelTitle'></h2>
<div style="">
    <span id='agent1' ></span>
    <span id='agent2' ></span>
</div>

<%-- Include the correct level file; level to be picked from the info object which is stored in session --%>
<jsp:include page="${levelJspFileName}"></jsp:include>

<script src="../js/crypto.js"></script>
<%-- Include footer file --%>
<%@include file="/jsp/footer.jsp" %>

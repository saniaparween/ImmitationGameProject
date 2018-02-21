<%@page contentType="text/html"%>

<%@page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@page import="org.json.simple.JSONObject"%>


<%-- Include header file --%>
<%@include file="/jsp/header.jsp" %>

<%
    //Check if the user has registered
    JSONObject info = (JSONObject)session.getAttribute("info");
    if ( info ==  null ) {
    //send a redirect to home page
		response.sendRedirect("/jsp/welcome.jsp");
		return;
	}

	String agentName1 = (String)info.get("agentName1");
	String agentName2 = (String)info.get("agentName2");
	String message =  "You did great. You have qualified the first level. We are thinking that we should screen you further. Things are going to get tougher tomorrow. Be prepared AGENTS !!. Good Luck.";
	String missionTitle = "MISSION ACCOMPLISHED";
	int level = (Integer)info.get("level");
	if (level == 1) {
		message =  "You did good but not great. You are not the RAW agents we are looking for.";
		missionTitle = "MISSION FAILED";
	}
%>


<div class="container-fluid" id="level1intro" >
    <div class="row" style="padding-top:30px;   text-align:center;">
        <div class="container">
            <div class="col-xs-12" style="padding-top:10px; ">
                <h1 style="padding-top:20px; font-size:35px; color : rgb(245, 255, 7);"><strong><%= missionTitle %></strong></h1>
                <h3 style="padding-top:20px; font-size:25px; color : rgb(41, 218, 30);">Agent <%= agentName1 %> and Agent <%= agentName2 %></h3>
                <p style="padding-top:35px; font-size:20px; color : white;"><%= message %></p>
            </div>
        </div>
    </div>
</div>

<%-- Include footer file --%>
<%@include file="/jsp/footer.jsp" %>

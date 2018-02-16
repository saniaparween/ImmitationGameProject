<%@page contentType="text/html"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.io.*,java.util.*, javax.servlet.*"%>


<%@include file="/jsp/utils.jsp" %>

<%
	//check if he is already registered
	JSONObject info = (JSONObject)session.getAttribute("info");
	JSONObject responseInfo = new JSONObject();

    if (info != null && (Boolean) info.get("isRegistered")) {
    	printLog("User is already registered: " + info);
    	printLog("Redirecting to crypto");

        responseInfo.put("status", "0");
        responseInfo.put("message", "You are already registered. Taking you were you left off.");
    	responseInfo.put("redirectUrl", "/jsp/crypto.jsp");
        out.print(responseInfo);
		out.flush();
        return;
    }

    String agentName1 = request.getParameter("agentName1");
    String agentName2 = request.getParameter("agentName2");

    if ( null == agentName1 || null == agentName2 || agentName1.equals("") || agentName2.equals("") ) {
    	//this means that the client did not submit names correctly; send error to client
    	responseInfo.put("message", "Something went wrong. Please register with correct input");
    	responseInfo.put("status", "-1");
	} else {
		//registration begins
		long currentTime =  System.currentTimeMillis();

		info = new JSONObject();
		info.put("agentName1", agentName1);
		info.put("agentName2", agentName2);
		info.put("isRegistered", true);
		info.put("startTime", currentTime);
		info.put("endTime", currentTime + 30 * 60 * 1000);
		info.put("level", 1);
		session.setAttribute("info", info);

		responseInfo.put("message", "Registered successfully. Redirecting you to your challenge");
    	responseInfo.put("status", "0");
    	responseInfo.put("redirectUrl", "/jsp/crypto.jsp");
	}

	out.print(responseInfo);
	out.flush();
%>
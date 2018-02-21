<%@page contentType="text/html"%>

<%@page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@page import="org.json.simple.JSONObject"%>


<%
	JSONObject userInfo = (JSONObject)session.getAttribute("info");

	if (userInfo == null){
        //CASE 1 : if someone wants to call status without being resgistered
		JSONObject responseInfo = new JSONObject();
		responseInfo.put("status", "-1");
        responseInfo.put("message", "You are not registered. Taking you to welcome page.");
        responseInfo.put("redirectUrl", "/jsp/welcome.jsp");
        out.print(responseInfo);
	} else if (userInfo != null && (Boolean) userInfo.get("isRegistered")) {
        long currentTime =  System.currentTimeMillis();
        long endTime = (Long) userInfo.get("endTime");
        if (endTime < currentTime) {
            //CASE 2 : User registered but timed out
            JSONObject responseInfo = new JSONObject();
            responseInfo.put("status", "-1");
            responseInfo.put("message", "You did/did not do well. Only time will tell. Oh time! that reminds me it's up.");
            responseInfo.put("redirectUrl", "/jsp/result.jsp");
            out.print(responseInfo);
        } else {
            //CASE 3 : User registered and still in the game
            out.print(userInfo);
        }
    }
    out.flush();
    return;
%>
<%@page contentType="text/html"%>

<%@page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@page import="org.json.simple.JSONObject"%>


<%
	JSONObject userInfo = (JSONObject)session.getAttribute("info");

	if (userInfo == null){
		JSONObject responseInfo = new JSONObject();
		responseInfo.put("status", "-1");
        responseInfo.put("message", "You are not registered. Taking you to welcome page.");
    	responseInfo.put("redirectUrl", "/welcome.html");
        out.print(responseInfo);
		out.flush();
        return;

	}
    if (userInfo != null && (Boolean) userInfo.get("isRegistered")) {
        out.print(userInfo);
        out.flush();
		return;
    }

%>
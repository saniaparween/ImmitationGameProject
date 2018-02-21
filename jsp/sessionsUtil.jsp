<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@include file="/jsp/utils.jsp" %>
<%
    //Check if the user has registered
    JSONObject info = (JSONObject)session.getAttribute("info");

    if (info != null && (Boolean) info.get("isRegistered")) {
        //do nothing
        printLog("session details for user:" + info);
    } else {
        //send a redirect to home page
        printLog("user is not logged in.. sending him to regiter page:");
        response.sendRedirect("/jsp/welcome.jsp");
        return;
    }

    // user is not new so I must have his attributes
    long endTime = (Long)info.get("endTime");
    int level = (Integer)info.get("level");
    long currentTime =  System.currentTimeMillis();

    if (currentTime > endTime) {
        //send him to his result page
        response.sendRedirect("/jsp/result.jsp");
    }
    // printLog("INFO:" + info.toString());

    String levelJspFileName = "/jsp/level" + level + ".jsp"; //level1.jsp, level2.jsp etc
    pageContext.setAttribute("levelJspFileName", levelJspFileName, PageContext.REQUEST_SCOPE);

%>
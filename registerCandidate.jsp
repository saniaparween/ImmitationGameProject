<%@ page language="java" contentType="text/html"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@include file="sessionsUtil.jsp" %>

<%
   Enumeration<String> paramNames = request.getParameterNames();

   while(paramNames.hasMoreElements()) {
      String paramName = (String)paramNames.nextElement();
      String paramValue = request.getParameter(paramName);
      System.out.println(paramName + " : " + paramValue);
   }
   printLog("hello");
%>
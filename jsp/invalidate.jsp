<%@page contentType="text/html"%>

<%@page import="java.io.*,java.util.*, javax.servlet.*"%>

<%
session.invalidate();
response.sendRedirect("../jsp/welcome.jsp");
%>
<%@page contentType="text/html"%>
<%@page import="java.io.*,java.util.*, javax.servlet.*"%>

<%!
    public void printLog(String log) {
        System.out.println(log);
    }

    public boolean isTrue(String booleanVal) {
        return Boolean.parseBoolean(booleanVal);
    }
%>
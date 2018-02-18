<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>

<!-- I am supposed to have methods related to sessions. No other craps here.-->
<c:set var="test" value="test1" scope="request"/>
<%
   Date createTime = new Date(session.getCreationTime());
   Date lastAccessTime = new Date(session.getLastAccessedTime());
   Integer visitCount = new Integer(0);
   String visitCountKey = new String("visitCount");
   String userIDKey = new String("userID");
   String userID = new String("ABCD");

   // Check if this is new comer on your Webpage.
   // if (isNew()){
   //    printLog("created:" + createTime.toString() + " lastAccessTime:" + lastAccessTime.toString());
   //    <!-- session.setAttribute(userIDKey, userID);
   //    session.setAttribute(visitCountKey,  visitCount); -->
   // } else {

   // }

   printLog("created: asd" + createTime.toString() + " lastAccessTime:" + lastAccessTime.toString());
   // visitCount = (Integer)session.getAttribute(visitCountKey);
   // visitCount = visitCount + 1;
   // userID = (String)session.getAttribute(userIDKey);
   // session.setAttribute(visitCountKey,  visitCount);

	String resp = "abc";
	String test = requestContext.getAttribute("test");
	resp = resp + test;
	printLog(resp);
	requestContext.setAttribute("resp", resp);
	requestContext.setAttribute("create", createTime.toString());
%>

<%!
    // public boolean isNew(){
    //     return session.isNew()
    // }

    public void printLog(String log){
    	System.out.println(log);
    }
%>
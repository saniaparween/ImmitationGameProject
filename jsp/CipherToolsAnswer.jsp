<%@ page language="java" contentType="text/html"%>

<%@page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@page import="org.json.simple.JSONObject"%>

<html>

<%!
public  StringBuffer encrypt(String text, int s)
    {
        StringBuffer result= new StringBuffer();
 
        for (int i=0; i<text.length(); i++)
        {
            if (Character.isUpperCase(text.charAt(i)))
            {
                char ch = (char)(((int)text.charAt(i) +
                                  s - 65) % 26 + 65);
                result.append(ch);
            }
            else
            {
                char ch = (char)(((int)text.charAt(i) +
                                  s - 97) % 26 + 97);
                result.append(ch);
            }
        }
        return result;
	}	

%>



<%
	String encryptedText=request.getParameter("CeaserInput");
	//int z=Integer.parseInt(request.getParameter("key"));
	StringBuffer decryptedText;
	decryptedText= encrypt(encryptedText,4);

	JSONObject result = new JSONObject();
	result.put("decryptedText",decryptedText);
	

	out.print(result);
	
	out.flush();

%>

</html>
<%@ page language="java" contentType="text/html"%>

<%@page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@page import="org.json.simple.JSONObject"%>


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
	String cipherId = request.getParameter("");
	String encryptedText=request.getParameter("ceaserInput");
	int ceaserKey=Integer.parseInt(request.getParameter("ceaserKey"));
%>	

<%	
	StringBuffer decryptedText;
	decryptedText= encrypt(encryptedText,ceaserKey);
	
	
	JSONObject result = new JSONObject();
	result.put("decryptedCeaserCipher",decryptedText.toString()); //
	

	out.print(result);
	
	out.flush();

%>

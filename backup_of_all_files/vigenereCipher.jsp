  <%@ page language="java" contentType="text/html"%>
<%@ page import="java.text.*,java.util.*,java.lang.*, Mypackage.*"%>
<%!
  public  String decrypt(String text, final String key)
    {
        String res = "";
        text = text.toUpperCase();
        for (int i = 0, j = 0; i < text.length(); i++)
        {
            char c = text.charAt(i);
            if (c < 'A' || c > 'Z')
                continue;
            res += (char) ((c - key.charAt(j) + 26) % 26 + 'A');
            j = ++j % key.length();
        }
        return res;
    }
	%>
	
<%String s=request.getParameter("VigenereInput");
String z=request.getParameter("VigenereKey");

%>
<br>The given text to be encrypted is <%=s%>  and key is <%=z%>.
<br>Encrypted text is: <%=decrypt(s,z)%>
<%@ page language="java" contentType="text/html"%>
<%@ page import="java.text.*,java.util.*, Mypackage.*"%>

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



<%String s=request.getParameter("word");
int z=Integer.parseInt(request.getParameter("key"));

%>
<br>The given text to be encrypted is <%=s%>  and key is <%=z%>.
<br>Encrypted text is: <%=encrypt(s,z)%>

</html>
<%@ page language="java" contentType="text/html"%>
<%@ page import="java.text.*,java.util.*,java.lang.*, Mypackage.*"%>

<%!
void encryptDecrypt(String inpString)
{
    // Define XOR key
    // Any character value will work
    char xorKey = 'P';
 
    // calculate length of input string
    int len = inpString.length();
 
    // perform XOR operation of key
    // with every caracter in string
    for (int i = 0; i < len; i++)
    {
        inpString.charAt[3] = inpString.charAt[3] ^ xorKey;
       // return("%c",inpString.char[i]);
    }
	return inpString;
}
%>
<%String s=request.getParameter("XORInput");
int z=Integer.parseInt(request.getParameter("XORKey"));

%>
<br>The given text to be encrypted is <%=s%>  and key is <%=z%>.
<br>Encrypted text is: <%=encryptDecrypt(s,z)%>
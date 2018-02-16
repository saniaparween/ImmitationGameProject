<%@ page language="java" contentType="text/html"%>
<%@ page import="java.text.*,java.util.*, Mypackage.*"%>

<html>
<head>

<title>THE IMITATION GAME</title>
<link rel = "stylesheet" href = "main.css">

</head>

<% SimpleDateFormat sdf=new SimpleDateFormat("MM/dd/yyyy"); %>

<body>
<h1 style= "color: red;">Welcome to the arena of THE IMITATION GAME! Today is <%= sdf.format(new Date()) %></h1>

<br><br><% String agentName1= request.getParameter("agentName1");
			String agentName2= request.getParameter("agentName2");
			%>
Agent is :<%= agentName1 %> and <%= agentName2%>
<br>

<form action="vigenereCipher.jsp">
To use Vigenere's tool fill in the text and the key
Input String:<input name=VigenereInput><br>
key in words:<input name= VigenereKey><br>
<input type = submit>
</form>


<form action="tools.jsp">
To use Cipher's tool fill in the text and the key
Input String:<input name=word><br>
key:<input name= key><br>
<input type = submit>
</form>

<form action="XORCipher.jsp">
To use XOR's tool fill in the text and the key
Input String:<input name=XORInput><br>
key:<input name= XORKey><br>
<input type = submit>
</form>

<%!
int a = 2;
int print(){
	
	return a;
}

%>

</br><strong>Your ip is <%=request.getRemoteAddr() %></strong>
your computer's address is : <%= request.getRemoteHost() %>

<p style:background-color:blue>
Hello there! You do not have much time. The date is <%= sdf.format(new Date()) %>. 

The senior RAW analyst Mr. Shiv Prasad Raman has just
been informed that there is a high risk of some potential threat. A team of five members have been given the task to
safely evade the dangerous situation. The RAW, Govt of India based on your high intelligence has chosen you to carry on the task.
while your two other teammates- Rajat Bhushan and Vijay Singh Rathore are out their gathering information, your task is to assess those information and 
and hand over the correct information to Mr. Shiv Prasad Raman.
You do not have much time in your hand, so be fast. The life of crores of people are in your hands now.  Be their saviour!<br>

<b>IP 1900.876.0.0.1 : 1010 base 1? <br>
Ip 1800.076.0.0.1 : 1011 base 0. <br>
IP 1900.876.0.0.1 : status code?  <br>
Ip 1800.076.0.0.1 : 202! Control zone entered. BIOS set up done.<br>
IP 1900.876.0.0.1 : Which partition?<br>
Ip 1800.076.0.0.1 : CCU<br>
IP 1900.876.0.0.1 : Sector?<br>
Ip 1800.076.0.0.1 : On mail<br>
IP 1900.876.0.0.1 : ET?<br>
Ip 1800.076.0.0.1 : On mail<br>
IP 1900.876.0.0.1 : Passage to mail?<br>
Ip 1800.076.0.0.1 : 1110<br>
IP 1900.876.0.0.1 : Pendrive loaded?<br>
Ip 1800.076.0.0.1 : loaded. Hard drive will be formatted soon.<br>
IP 1900.876.0.0.1 : 1010 base 1 signing off.<br>
Ip 1800.076.0.0.1 : 1011 base 0 permission granted.<br></b>
			


	

The team member, V.S Rathore just informed that the terrorists maybe planning to target some crowded location aiming to target the civilians. 
He had received a message from one of the Indian spies that told him about the occurence of the event. This is the message  the 
that the spy gave :<br><br><br>

<b>#Cookies loaded in the partition CCU. 1 sector affected :FqjdyuzmxAzq</b><br><br><br>


ALERT there!! C has some serious message for you. The attackers are all set to execute their plan.

#ET : ########## 
</p>

</body>
</html>


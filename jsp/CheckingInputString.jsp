<%@page contentType="text/html"%>
<%@page import="org.json.simple.JSONObject"%>

<%@page import="java.io.*,java.util.*, javax.servlet.*,java.util.regex.Matcher,java.util.regex.Pattern"%>

<% JSONObject info = (JSONObject)session.getAttribute("info");
	int currentLevel = (Integer)info.get("level");
%>

<%!
    public boolean stringMatcher(String s) {

		String a[][] = {{"people","person", "terrorist","persons","terrorists","men","bomber","assassin","hijacker","assassins"},{"infiltrate","entered","invaded","deployed","penetrated","invade","intrude","infiltrated","started","penetrate"},{"in","in","in","in","in","in","in","in","in","in"},{"the","the","the","the","the","the","the","the","the","the"},{"area","location","venue","locality","place","spot","site","address","city","division"},{"calcutta","calcutta","calcutta","calcutta","calcutta","calcutta","calcutta","calcutta","calcutta","calcutta"},{"one","one","one","one","one","one","one","one","one","one"},{"sector","area","division","place","airport","venue","location","spot","sector","area"},{"affected","affected","affected","affected","affected","affected","affected","affected","affected","affected"},{"terminaltwo","terminaltwo","terminaltwo","terminaltwo","terminaltwo","terminalTwo","Terminaltwo","terminaltwo","TerminalTwo","terminaltwo"}};
		String check[] = new String [30];

        Pattern p = Pattern.compile("[a-zA-Z]+");
        Matcher m1 = p.matcher(s);
        int k =0; // Sania -> use meaningful var names
		while(m1.find()){
			 check[k]=m1.group();
			 k++;
		}

		for(int i=0;i<k;i++){
			//System.out.println(check[i]); //-> use print Log method
		}

		int flag=0;
		for (int i=0; i<10; i++) {
			flag=0;
			for (int j=0; j<10; j++){
					if (check[i].equals(a[i][j])) {
							flag = 1;
							//System.out.println("Inside "); //-> use print Log method
							break;
					}
			}
			if (flag == 0) {
				break;
			}
		}

		if (flag == 0) {
			return false;
			//System.out.println("Sentence mismatched");
		}
		else{
			return true;
			//System.out.println("Sentence matched");
		}
       }
%>
<%!
	public boolean level2Method(){
		return true;
	}
%>

<%
	String inputString = request.getParameter("comment");
	boolean isCorrectAnswer = false; // Note difference betwen boolean and Boolean (this is object)

	if (currentLevel == 1) {
		isCorrectAnswer = stringMatcher(inputString);
	}

	if (currentLevel == 2) {
		isCorrectAnswer = level2Method();
	}

	JSONObject result = new JSONObject();

	if (isCorrectAnswer) {
		result.put("status","0");
		result.put("redirectUrl", "/jsp/result.jsp"); //SANIA - do change after first day and change this to crypto.jsp
		info.put("level", currentLevel+1);
	} else {
		result.put("status", "-1"); //
	}

	out.print(result);
	// out.print(info); //
	out.flush();
%>

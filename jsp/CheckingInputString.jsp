<%@page contentType="text/html"%>
<%@page import="org.json.simple.JSONObject"%>

<%@page import="java.io.*,java.util.*, javax.servlet.*,java.util.regex.Matcher,java.util.regex.Pattern"%>


<%!

    public String StringMatcher(String s)
    {

		 String a[][] = {{"people","person", "terrorist"},{"loaded","ready","fire"},{"in","in","in"},{"the","the","the"},{"area","location","venue"}};
		 String check[] = new String [10];
   
        Pattern p = Pattern.compile("[a-zA-Z]+");
        Matcher m1 = p.matcher(s);
        int k =0;
		while(m1.find()){
			 check[k]=m1.group();
			 k++;
		}	 
		
		for(int i=0;i<k;i++){
			
			System.out.println(check[i]);
		}
		int flag=0;	
		for(int i=0; i<5; i++) {
			flag=0;
			for(int j=0; j<3; j++){
					if (check[i].equals(a[i][j])){
							flag = 1;
							System.out.println("Inside ");
							break;
					}
			}
			if(flag == 0){
				break;
			}
		}
		
		if(flag == 0){
			return "false";
			//System.out.println("Sentence mismatched");
		}
		else{
			return "true";
			//System.out.println("Sentence  matched");
		}
       }
	

%>

<%	
	String inputString = request.getParameter("comment");
%>	


<%	String s1;
	s1=StringMatcher(inputString);
	
	JSONObject result= new JSONObject();
	
	if(s1=="true"){
		
		result.put("status","0");
		//result.put("redirectUrl", "/jsp/level1.jsp");
        out.print(result);
		out.flush();
	}
		
	if(s1=="false"){
	
		result.put("status", "-1");
		out.print(result);
		out.flush();
	}	
	
%>

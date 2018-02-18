<%@page contentType="text/html"%>

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
			return "String not Matched";
			System.out.println("Sentence mismatched");
		}
		else
			return "String Matched";
			System.out.println("Sentence  matched");
		}
       }


%>

<%=StringMatcher("people loaded in the partition")%>
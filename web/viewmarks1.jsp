<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="robust.Dbconnection"%>

 <%
      
        
            int i=0;
            try 
            {
               
     int sem = Integer.parseInt(request.getParameter("sem"));
     
            Connection con;
            Statement st;
            ResultSet rs;
            con = Dbconnection.getConnection();
            st = con.createStatement();
                 
            if(sem==1){
                
              response.sendRedirect("viewmarks2.jsp");
                  
            }
           
            else if(sem==2)
            {
             
               response.sendRedirect("viewmarks3.jsp?"); 
            }
            
            %>   
               <%
	 }
            catch(Exception e)
            {
                    out.println(e.getMessage());
            }
            %>

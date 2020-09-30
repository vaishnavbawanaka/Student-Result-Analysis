<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="robust.Dbconnection"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
   

    <title>Result Analysis</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/custom-styles.css" rel="stylesheet">
    <link href="css/image-effects.css" rel="stylesheet">
	
	   <link href="css/normalize.css" rel="stylesheet">
		 <link href="css/component.css" rel="stylesheet">
      <link rel="stylesheet" href="css/font-awesome.css">
      <link rel="stylesheet" href="css/font-awesome-ie7.css">
	  
    <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
	  <script src="js/modernizr.custom.js"></script>
 
  </head>
 <%
      
     
             
            int i=0;
            try 
            {
               
     //String facultyname=null;
     String no=request.getParameter("no");
      int sem = Integer.parseInt(request.getParameter("sem"));
     
            Connection con;
            Statement st;
            ResultSet rs;
            con = Dbconnection.getConnection();
            st = con.createStatement();
                 
            if(sem==1){
                
              response.sendRedirect("editmarks4.jsp?reg=success");
                  
            }
           
            else if(sem==2)
            {
             
               response.sendRedirect("editmarks5.jsp?reg=success"); 
            }
            
            %>   
 
        
        
                
                                         <%
					
						
					 	
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
    
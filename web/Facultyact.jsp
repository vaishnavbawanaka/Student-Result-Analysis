 <%@page import="java.sql.*"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    System.out.println(username);
    String password = request.getParameter("password");
    System.out.println(password);
    try{
       
      
	Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from faculty where no='"+username+"' and pass='"+password+"'");
       if(rs.next())
        {
         String  user = rs.getString(2);
		   session.setAttribute("user1",user);
		   System.out.println("User:"+user);
		   response.sendRedirect("facultyhome.jsp?msg=login success");
        }
       else 
        {
            response.sendRedirect("faculty.jsp?msg1=username/password wrong");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in faculty"+e.getMessage());
    }
%>




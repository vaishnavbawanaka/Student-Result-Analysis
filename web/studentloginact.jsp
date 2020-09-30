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
        ResultSet rs = st.executeQuery("select * from student where no='"+username+"' and pass='"+password+"'");
       if(rs.next())
        {
         String  no = rs.getString(3);
		   session.setAttribute("no",no);
		   System.out.println("no"+no);
		   response.sendRedirect("studenthome.jsp?msg=login success");
        }
       else 
        {
            response.sendRedirect("studentlogin.jsp?msg1=username/password wrong");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in studentlogact"+e.getMessage());
    }
%>




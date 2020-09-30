 <%@page import="java.sql.*"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>
<%
   
    
    String name = request.getParameter("name");
    String no = request.getParameter("no");
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String gen = request.getParameter("gen");
    String address = request.getParameter("address");
     String contactno = request.getParameter("contactno");
     
       
       
       try{
       
        Statement st=null;
        Connection con=null;
	con = Dbconnection.getConnection();
       st = con.createStatement();
       PreparedStatement pstmt=con.prepareStatement("delete from student  where no='"+no+"'");
       int i=pstmt.executeUpdate();
    if (i != 0) {
           response.sendRedirect("adminhome.jsp?del=success");
       }
   
}
catch(Exception e1)
{
    response.sendRedirect("adminhome.jsp?del1=Email Id you Entered already in Use");
out.println(e1.getMessage());
}


%>

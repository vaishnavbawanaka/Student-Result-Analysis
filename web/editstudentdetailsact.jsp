 <%@page import="java.sql.*"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>
<%
   
    
    String name = request.getParameter("name");
    String no = request.getParameter("no");
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String gen = request.getParameter("gen");
    String sem = request.getParameter("sem");
    String fname = request.getParameter("fname");
    String address = request.getParameter("address");
     String contactno = request.getParameter("contactno");
     
      try{
       
        Statement st=null;
        Connection con=null;
	con = Dbconnection.getConnection();
       st = con.createStatement();
       PreparedStatement pstmt=con.prepareStatement("update student set name='"+name+"',no='"+no+"',email='"+email+"',dob='"+dob+"',gen='"+gen+"',sem='"+sem+"',fname='"+fname+"',contactno='"+contactno+"',address='"+address+"' where no='"+no+"'");
       int i=pstmt.executeUpdate();
    if (i != 0) {
           response.sendRedirect("editstudentdetails.jsp?msg=success");
       }
   
}
catch(Exception e1)
{
    response.sendRedirect("editstudentdetails.jsp?msg1=Email Id you Entered already in Use");
out.println(e1.getMessage());
}


%>

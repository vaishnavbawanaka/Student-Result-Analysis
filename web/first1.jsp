 <%@page import="robust.Mail"%>
<%@page import="java.sql.*"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>
<%
   
    
    String name = request.getParameter("name");
    String no = request.getParameter("no");
    String email = request.getParameter("email");
    int sub1 = Integer.parseInt(request.getParameter("sub1"));
    int sub2 = Integer.parseInt(request.getParameter("sub2"));
    int sub3 = Integer.parseInt(request.getParameter("sub3"));
    int sub4 = Integer.parseInt(request.getParameter("sub4"));
    int sub5 = Integer.parseInt(request.getParameter("sub5"));
     int sub6 = Integer.parseInt(request.getParameter("sub6"));
     int sub7 = Integer.parseInt(request.getParameter("sub7"));
     int sub8 = Integer.parseInt(request.getParameter("sub8"));
     
      
       
       try{
       
        Statement st=null;
        Connection con=null;
	con = Dbconnection.getConnection();
       st = con.createStatement();
       PreparedStatement pstmt=con.prepareStatement("update first set sub1="+sub1+",sub2="+sub2+",sub3="+sub3+",sub4="+sub4+",sub5="+sub5+",sub6="+sub6+",sub7="+sub7+",sub8="+sub8+" where no='"+no+"'");
       int i=pstmt.executeUpdate();
       String msg ="Student Email : "+email+"\nRoll No : "+no+"\nMessage  :Your Marks has been Updated by Admin  ";
       
      Mail m= new Mail();
      m.secretMail(msg, email, email);
    if (i != 0) {
           response.sendRedirect("editmarks.jsp?first=success");
       }
   
}
catch(Exception e1)
{
    response.sendRedirect("adminhome.jsp?first1=Email Id you Entered already in Use");
out.println(e1.getMessage());
}


%>

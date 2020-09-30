 <%@page import="robust.Mail"%>
<%@page import="java.sql.*"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>
<%
   
     String id = null;
     String name = request.getParameter("name");
     session.setAttribute("name",name);
     String no = request.getParameter("no");
     String pass = request.getParameter("pass");     
     String email = request.getParameter("email");       
     String dob = request.getParameter("dob");
     String gen = request.getParameter("gen");
     String sem = request.getParameter("sem");
     String fname = request.getParameter("fname");
     String address = request.getParameter("address");
     String contactno = request.getParameter("contactno");
   
              
        
       try{
       
	Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();

       PreparedStatement ps = con.prepareStatement("insert into faculty values(?,?,?,?,?,?,?,?,?,?,?)");

       ps.setString(1,id);
       ps.setString(2,name);
       ps.setString(3,no);
       ps.setString(4,pass);
       ps.setString(5,email);
       ps.setString(6,dob);
       ps.setString(7,gen); 
       ps.setString(8,sem);
       ps.setString(9,fname);
       ps.setString(10,address);
       ps.setString(11,contactno);         
       ps.executeUpdate();

      String msg ="Faculty Email : "+email+"\nRoll No : "+no+"\nPassword : "+pass+"\nMessage  :Login to your Account";
      Mail m= new Mail();
     m.secretMail(msg, email, email);
response.sendRedirect("faculty.jsp?reg=success");
out.println("faculty Registered Successfully");
}
catch(Exception e1)
{
    response.sendRedirect("facultyreg.jsp?reg1=Email Id you Entered already in Use");
out.println(e1.getMessage());
}


%>

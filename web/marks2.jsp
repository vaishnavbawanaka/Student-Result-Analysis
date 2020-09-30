 <%@page import="java.sql.*"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>
<%
   
     String id = null;
     String no = request.getParameter("no");
 String email = request.getParameter("email");   
     int sem = Integer.parseInt(request.getParameter("sem"));
     int sub1 = Integer.parseInt(request.getParameter("sub1"));     
     int sub2 = Integer.parseInt(request.getParameter("sub2"));       
     int sub3 = Integer.parseInt(request.getParameter("sub3"));
     int sub4 = Integer.parseInt(request.getParameter("sub4"));
     int sub5 = Integer.parseInt(request.getParameter("sub5"));
     int sub6 = Integer.parseInt(request.getParameter("sub6"));
     int sub7 = Integer.parseInt(request.getParameter("sub7"));
     int sub8 = Integer.parseInt(request.getParameter("sub8"));     
       try{
      
          if(sem==1){
               
       Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();

       PreparedStatement ps = con.prepareStatement("insert into first values(?,?,?,?,?,?,?,?,?,?,?,?)");

       ps.setString(1,id);
       ps.setString(2,no);
       ps.setInt(3,sem);
       ps.setInt(4,sub1);
       ps.setInt(5,sub2);
       ps.setInt(6,sub3);
       ps.setInt(7,sub4); 
       ps.setInt(8,sub5);
       ps.setInt(9,sub6);
        ps.setInt(10,sub7);
      ps.setInt(11,sub8);
      ps.setString(12,email);
       ps.executeUpdate();
          
        }
          
          if(sem==2){
               
       Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();

       PreparedStatement ps = con.prepareStatement("insert into second values(?,?,?,?,?,?,?,?,?,?,?,?)");

       ps.setString(1,id);
       ps.setString(2,no);
       ps.setInt(3,sem);
       ps.setInt(4,sub1);
       ps.setInt(5,sub2);
       ps.setInt(6,sub3);
       ps.setInt(7,sub4); 
       ps.setInt(8,sub5);
       ps.setInt(9,sub6);
       ps.setInt(10,sub7);
       ps.setInt(11,sub8);
        ps.setString(12,email);
       ps.executeUpdate();
          
        } 
          
          
response.sendRedirect("adminhome.jsp?marks=success");

}
catch(Exception e1)
{
    response.sendRedirect("adminhome.jsp?mark1=Email Id you Entered already in Use");
out.println(e1.getMessage());
}


%>

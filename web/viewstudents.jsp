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
            if (request.getParameter("msg") != null) {%>
        <script>alert('Student Details Updated Successfully');</script>
        <%}
            if (request.getParameter("msg1") != null) {%>
        <script>alert('Login Failed Username/Password Wrong');</script> 
        
        <%}
        %>
  <body>
     <div class="container page-styling">
    <div class="header-wrapper">
      <div class="site-name">
        <h1><font color="green">Result Analysis</font></h1>
      </div>
      <div class="menu">
        <div class="navbar">
         
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
            </div>
            <div class="navbar-collapse collapse">
             <ul class="nav navbar-nav ">
                <li><a href="facultyhome.jsp">Home</a></li>
                 <li><a href="viewstudents.jsp">View Students</a></li>
                 <li><a href="viewstudentmarks.jsp">View Student Marks</a></li>
               <li><a href="index.html">Logout</a></li>
              </ul>

            </div><!--/.navbar-collapse -->

          </div>
          
    </div>
      </div>
      <div class="banner">
          <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Wrapper for slides -->
   <div class="carousel-inner">
    <div class="item active">
      <img src="img/1.jpg" alt="" class="">
     
    </div>
    <div class="item">
      <img src="img/1.jpg" alt="">
      
    </div>
    
  </div>

 
</div>
      </div>
       <div class="row">
 <div class="featured-block">
        <div class="col-md-4">
        </div>
      </div>
          
      <div class="featured-block">
        <div class="col-md-4">
        
       
             <%
     
            Connection con;
            Statement st;
            ResultSet rs;
            con = Dbconnection.getConnection();
            st = con.createStatement();
            rs = st.executeQuery("select * from student ");
                                                      
            %>   
            
            <form name="f" action="viewstudents1.jsp" method="post" onsubmit="return check()">
<table>
         <br>  <br><br>  <br> <br>  <br> <h1>View Student Details</h1>
           
                        
                        
                        <tr>
                          <th height="43"><font color="black">Select Roll No</th>
                          <td><select id="s1" name="no" style="width:170px;" class="text" required="">
                            <% 
                       while(rs.next())
                       {
                       String no = rs.getString("no");
                       
                                %>
                <option value="<%=no%>" ><%=no%></option>
             <% }%>
                          </select></td>
                        </tr>
            <br><br>
            
                <tr>
              <td>
                 <input type="submit" value="submit"  style="height:30px; width:65px" />
             </td>
              </tr>
        
</table>
        
       </div>
        </div>
      </div>
      <div class="featured-block">
        <div class="col-md-4">
        
        </div>
      </div>
      </div>
      </div>
     
    </div><!-- /container -->
	
    <div class="container">
	<div class="copy-rights">
	<a href="http://www.mlrinstitutions.ac.in/"></a> 
	</div>
	</div>

    
    

     


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.9.1.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
     <script src="js/masonry.pkgd.min.js"></script>
    <script src="js/imagesloaded.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/AnimOnScroll.js"></script>
    
    <script>
      new AnimOnScroll( document.getElementById( 'grid' ), {
        minDuration : 0.4,
        maxDuration : 0.7,
        viewportFactor : 0.2
      } );
    </script>

    
  </body>
</html>

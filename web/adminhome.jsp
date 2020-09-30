
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
        <script>alert('login success');</script>
        <%}
            if (request.getParameter("msg1") != null) {%>
        <script>alert('Login Failed Username/Password Wrong');</script> 
         <%}
            if (request.getParameter("reg") != null) {%>
        <script>alert('student added successfully/username & password sent to user mailid');</script> 
         <%}
            if (request.getParameter("reg1") != null) {%>
        <script>alert('Student  Registration Faild');</script> 
       <%}
            if (request.getParameter("del") != null) {%>
        <script>alert('Student Deleted Successfully');</script> 
        <%}
            if (request.getParameter("marks") != null) {%>
        <script>alert('Student Marks Added Successfully');</script> 
        
       
        
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
                <li><a href="adminhome.jsp">Home</a></li>
                <li class="dropdown ">
                <a href="#" class="dropdown-toggle active" data-toggle="dropdown">Student Details <b class="caret"></b></a>
                <ul class="dropdown-menu">
                <li><a href="studentreg.jsp">Add Student</a></li>
                <li><a href="editstudentdetails.jsp">Edit Student</a></li>
                <li><a href="deletestudent.jsp">Delate Student </a></li>
              </ul>
            </li>
            
            <li class="dropdown ">
              <a href="#" class="dropdown-toggle active" data-toggle="dropdown">Student Marks <b class="caret"></b></a>
              <ul class="dropdown-menu">               
              <li><a href="marks.jsp">Add Marks</a></li>              
              <li><a href="editmarks.jsp">Edit Marks</a></li>
              </ul>
            </li>
            
               <li><a href="index.html">Logout</a></li>
              </ul>
            </div>

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

  <!-- Controls -->
  
  </a>
</div>
      </div>
      <div class="content-wrap">
        <div class="main-title">
          <ul class="grid effect-8" id="grid">
            <li > <%
            HttpSession ses=request.getSession(true);
            String uid=ses.getAttribute("user1").toString();
           
            %>
        
            <h1>welcome  <%=uid%></h1></li>
          </ul>
          
        </div>
      </div>
      
      <div class="content-wrap">
      </div>
      <div class="ruler"></div>
   </div><!-- /container -->
	
    <div class="container">
	<div class="copy-rights">
	<a href="http://www.mlrinstitutions.ac.in/"></a> 
	</div>
	</div>
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

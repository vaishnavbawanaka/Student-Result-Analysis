
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
   <title>Result Analysis</title>
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
                <li class="current"><a href="index.html">Home</a></li>
                <li><a href="admin.jsp">Admin</a></li>
                <li><a href="studentlogin.jsp">Student</a></li>
                <li><a href="faculty.jsp">Faculty</a></li>
                <li><a href="contact.html">Contact Us</a></li>
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

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>
      </div>
      <div class="row">

      <div class="featured-block">
        
        <div class="col-md-4">
       </div>
      </div>
          
      <div class="featured-block">
        <div class="col-md-4">
        
        
            
            
            <form action="facultyregact.jsp" method="post" id="" >
                
                
                <br>  <br><br><br><br><br><br><br><h1> Faculty Registration  </h1><br><br><br><br><br>
                
					  <table width="350">
                      
			 <tr>
                          <th width="191" height="43"><font color="black">Faculty Name </th>
                          <td width="218"><input id="name" name="name" class="text" required=""/></td>
                        </tr>
                        
                        <tr>
                          <th width="191" height="43"><font color="black">Roll No</th>
                          <td width="218"><input id="name" name="no" class="text" required=""/></td>
                        </tr>
                        
                        
                        <tr>
                          <th height="43"><font color="black">Password </th>
                          <td width="218"><input type="password" id="password" name="pass" class="text" required="" /></td>
                        </tr>
                        
                        
                        <tr>
                            <th height="43"><font color="black"> Email Address</th>
                          <td><input id="email" name="email" class="text"  required=""/></td>
                        </tr>
                                              
                            <tr>
                            <th height="43"><font color="black">Date Of Birth</th>
                            <td><input type="date" name="dob" style="text-align:right" required=""></td></label>
                            
                        </tr>                  
                            
                        
                          <tr>
                          <th height="43"><font color="black">Select Gender</th>
                          <td><select id="s1" name="gen" style="width:170px;" class="text" required="">
                            <option>--Select--</option>
                            <option>MALE</option>
                            <option>FEMALE</option>
                          </select></td>
                        </tr>
                                              
                       
                            
                         <tr>
                          <th height="65"><font color="black">Father Name</th>
                          <td><textarea id="address" name="fname" rows="3" cols="21" required=""></textarea></td>
                        </tr>
                        
                            <tr>
                          <th height="65"><font color="black">Address</th>
                          <td><textarea id="address" name="address" rows="3" cols="21" required=""></textarea></td>
                        </tr>                  
                                              
                                              
                        <tr>
                          <th height="43"><font color="black">Mobile Number </th>
                          <td><input id="mobile" name="contactno" class="text"  required=""/></td>
                        </tr>
                        
                       
                        
                        
                        <tr>
                          <td height="43" rowspan="3">
                            <p>&nbsp;</p></td>
                          <td align="left" valign="middle"> <p>&nbsp;
                            </p>
                            <p>
                              <input name="submit" type="submit" value="REGISTER" />
                            </p>
                            <div align="right">
                            </div></td>
                        </tr>
               </table>
            </form>
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

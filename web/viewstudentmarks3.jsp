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

  <!-- Controls -->
  
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
     
     
            String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10;
            int i=0;
            try 
            {
     //String facultyname=null;
      String[] filedetails = request.getQueryString().split(",");
      String no=filedetails[0];
            Connection con;
            Statement st;
            ResultSet rs;
            con = Dbconnection.getConnection();
            st = con.createStatement();
            rs = st.executeQuery("select * from second where no='"+no+"'");
                  //Statement st=connection.createStatement();
                    //ResultSet rs = ps.executeQuery();
                    if ( rs.next() )
                    {
                           
                            s1=rs.getString(2);                          
                            s2=rs.getString(3);
                             s3=rs.getString(4);
                            s4=rs.getString(5);
                            s5=rs.getString(6);
                             s6=rs.getString(7);
                             s7=rs.getString(8);
                             s8=rs.getString(9);
                             s9=rs.getString(10);
                              s10=rs.getString(11);
            %> 
            <form name="f" action="second1.jsp?email=<%=s9%>" method="post" onsubmit="return check()">

         <br>  <br><br>  <br> <br>  <br> <h1>View Student Marks</h1>
           
                        <br>  <br><br>  <br>
                        
               <table width="320" border="1.5"  cellpadding="0" cellspacing="0"  >

           
            <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">roll No</div></th>
             <th> <input type="text" name="no" value="<%out.println(s1);%>"  width="195" valign="middle" align="center"  height="48" ><div></div></th>
           </tr>               

            <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">Semester</div></th>
             <th> <input type="text" name="sem" value="<%out.println(s2);%>"  width="195" valign="middle" align="center" readonly height="48" ><div></div></th>
           </tr> 
           
               </table>
           <br><br><br><br>
           
           <table width="320" border="1.5"  cellpadding="0" cellspacing="0"  >
           
             <tr>
                 <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9"><font color="black">Subjects</font></div></th>
           <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9"><font color="black">Marks</font></div></th>
             </tr> 
          
           
           
           <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">MEFA</div></th>
             <th> <input type="text" name="sub1" value="<%out.println(s3);%>"  width="195" valign="middle" align="center"  height="48" ><div></div></th>
           </tr> 
           
           
            <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">WT</div></th>
             <th> <input type="text" name="sub2" value="<%out.println(s4);%>"  width="195" valign="middle" align="center"  height="48" ><div></div></th>
           </tr> 
           
           <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">DS</div></th>
             <th> <input type="text" name="sub3" value="<%out.println(s5);%>"  width="195" valign="middle" align="center"  height="48" ><div></div></th>
           </tr> 
           
           <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">IS</div></th>
             <th> <input type="text" name="sub4" value="<%out.println(s6);%>"  width="195" valign="middle" align="center"  height="48" ><div></div></th>
           </tr> 
           
            <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">OOAD </div></th>
             <th> <input type="text" name="sub5" value="<%out.println(s7);%>"  width="195" valign="middle" align="center"  height="48" ><div></div></th>
           </tr> 
           
           
            <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">STM</div></th>
             <th> <input type="text" name="sub6" value="<%out.println(s8);%>"  width="195" valign="middle" align="center"  height="48" ><div></div></th>
           </tr> 
           
            <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">WT lab</div></th>
             <th> <input type="text" name="sub7" value="<%out.println(s9);%>"  width="195" valign="middle" align="center"  height="48" ><div></div></th>
           </tr> 
            <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">OOAD lab</div></th>
             <th> <input type="text" name="sub8" value="<%out.println(s10);%>"  width="195" valign="middle" align="center"  height="48" ><div></div></th>
           </tr> 
           
           
             </table>
                     
        
        <br><br> <br><br>
         
</table>
       <%

                       }

               }
               catch(Exception e)
               {
                       out.println(e.getMessage());
               }
               %>
        
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

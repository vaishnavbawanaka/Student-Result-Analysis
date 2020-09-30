
<%@page import="robust.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
                <li class="current"><a href="studenthome.jsp">Home</a></li>
              <li><a href="viewmarks.jsp">View Marks</a></li>
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
 
</div>
      </div>
      <div class="content-wrap">
        <div class="main-title">
          <ul class="grid effect-8" id="grid">
            <li > 
             <%
      HttpSession ses=request.getSession(true);
            String uid=ses.getAttribute("no").toString();
     
            String s9,s2;
            int i=0;
            try 
            {
    
   
            Connection con;
            con = Dbconnection.getConnection();
            Statement st;
            ResultSet rs;
            st = con.createStatement();
            rs = st.executeQuery("select * from second where no='"+uid+"'");
                  
                    if ( rs.next() )
                    {
                                                     
                            s2=rs.getString(3);
                           int s3=rs.getInt(4);
                           int s4=rs.getInt(5);
                           int s5=rs.getInt(6);
                           int s6=rs.getInt(7);
                           int s7=rs.getInt(8);
                           int s8=rs.getInt(9);
                            s9=rs.getString(12);
                           int s10=rs.getInt(10);
                           int s11=rs.getInt(11);
                           
                             int k=s3+s4+s5+s6+s7+s8+s10+s11;
                           
                           System.out.println("kkkk"+k);
                           
                           int l=k*100/750;
                           
                           System.out.println("lllll"+l);
                           
                           
                           
            %> 
             <center> 
   
         <br><br><br>
           <br><br><br>
                        
                        
               <table width="320" border="1.5"  cellpadding="0" cellspacing="0"  >

           
            <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">Roll No</div></th>
             <th> <input type="text" name="no" value="<%out.println(uid);%>"  width="195" valign="middle" align="center" readonly="" height="48" ><div></div></th>
           </tr>               

            <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">Semester</div></th>
             <th> <input type="text" name="sem" value="<%out.println(s2);%>"  width="195" valign="middle" align="center" readonly="" height="48" ><div></div></th>
           </tr> 
           
           <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">Email</div></th>
             <th> <input type="text" name="sem" value="<%out.println(s9);%>"  width="195" valign="middle" align="center" readonly="" height="48" ><div></div></th>
           </tr>
           
               </table>
           <br> <br> <br>
           <h1>Semester-2 Marks</h1><br> <br>
           <table width="320" border="1.5"  cellpadding="0" cellspacing="0"  >
           
               <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">Subjects</div></th>
           <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">Marks</div></th>
            </tr>
               
               
             <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">Web Services</div></th>
             <th> <input type="text" name="sub1" value="<%out.println(s3);%>"  width="195" valign="middle" align="center" readonly="" height="48" ><div></div></th>
           </tr> 
           
           
            <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">MEFA</div></th>
             <th> <input type="text" name="sub2" value="<%out.println(s4);%>"  width="195" valign="middle" align="center" readonly="" height="48" ><div></div></th>
           </tr> 
           
           <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">WT</div></th>
             <th> <input type="text" name="sub3" value="<%out.println(s5);%>"  width="195" valign="middle" align="center" readonly="" height="48" ><div></div></th>
           </tr> 
           
           <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">DS</div></th>
             <th> <input type="text" name="sub4" value="<%out.println(s6);%>"  width="195" valign="middle" align="center" readonly="" height="48" ><div></div></th>
           </tr> 
           
            <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">IS</div></th>
             <th> <input type="text" name="sub5" value="<%out.println(s7);%>"  width="195" valign="middle" align="center" readonly="" height="48" ><div></div></th>
           </tr> 
           <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">OOOAD</div></th>
             <th> <input type="text" name="sub6" value="<%out.println(s8);%>"  width="195" valign="middle" align="center" readonly="" height="48" ><div></div></th>
           </tr> 
           
           <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">WT LAb</div></th>
             <th> <input type="text" name="sub7" value="<%out.println(s10);%>"  width="195" valign="middle" align="center" readonly="" height="48" ><div></div></th>
           </tr> 
           
           <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">OOAD LAb</div></th>
             <th> <input type="text" name="sub8" value="<%out.println(s11);%>"  width="195" valign="middle" align="center" readonly="" height="48" ><div></div></th>
           </tr> 
           
            <tr>
             <th  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style9">Aggregate</div></th>
             <th> <input type="text" name="sub8" value="<%=l%>%"  width="195" valign="middle" align="center" readonly="" height="48" ><div></div></th>
           </tr> 
           
           </table>
             
              <br><br>
               
        </ul>
        </div>
             
              <%
		}
						
                }
                catch(Exception e)
                {
                        out.println(e.getMessage());
                }
                %>
             
            
            </li>
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

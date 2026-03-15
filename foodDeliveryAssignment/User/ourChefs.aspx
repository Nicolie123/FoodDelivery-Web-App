<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ourChefs.aspx.cs" Inherits="foodDeliveryAssignment.User.ourChefs" %>

<!DOCTYPE html>

<html lang="en">
    <head runat="server">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>FeastY | Home</title>

        <!-- Favicon -->
        <link rel="shortcut icon" href="../assets/img/favicon.ico" type="image/x-icon">

        <!-- Font awesome -->
        <link href="../assets/css/font-awesome.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="../assets/css/bootstrap.css" rel="stylesheet">   
        <!-- Slick slider -->
        <link rel="stylesheet" type="text/css" href="../assets/css/slick.css">    
        <!-- Date Picker -->
        <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-datepicker.css">   
         <!-- Gallery Lightbox -->
        <link href="../assets/css/magnific-popup.css" rel="stylesheet"> 
        <!-- Theme color -->
        <link id="switcher" href="../assets/css/theme-color/default-theme.css" rel="stylesheet">     

        <!-- Main style sheet -->
        <link href="../style.css" rel="stylesheet">    

   
        <!-- Google Fonts -->

        <!-- Prata for body  -->
        <link href='https://fonts.googleapis.com/css?family=Prata' rel='stylesheet' type='text/css'>
        <!-- Tangerine for small title -->
        <link href='https://fonts.googleapis.com/css?family=Tangerine' rel='stylesheet' type='text/css'>   
        <!-- Open Sans for title -->
        <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   
    </head>

    <body>

        <form runat="server">
            
            <!--START SCROLL TOP BUTTON -->
            <a class="scrollToTop" href="#">
                <i class="fa fa-angle-up"></i>
            </a>
            <!-- END SCROLL TOP BUTTON -->

            <!-- Start header section -->
            <header id="mu-header">  
                <nav class="navbar navbar-default mu-main-navbar" role="navigation">  
                    <div class="container">
                        <div class="navbar-header">
                            <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>

                            <!-- LOGO -->       

                            <!--  Text based logo  -->
                            <a class="navbar-brand" href="Default.aspx">Feast<span>Y</span></a> 

		                        <!--  Image based logo  -->
                            <!-- <a class="navbar-brand" href="index.html"><img src="assets/img/logo.png" alt="Logo img"></a>  -->
         

                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
                            <ul id="top-menu" class="nav navbar-nav navbar-right mu-main-nav">
                                <li><a href="../Default.aspx">Home</a></li>
                                <li><a href="../User/userAboutUs.aspx">About Us</a></li>                       
                                <li><a href="../User/userProductCatalog.aspx">Menu</a></li>
                                <li><a href="../User/userOrderHistory.aspx">Order History</a></li>
                                <li><a href="../User/userOrderStatus.aspx">Order Status</a></li>
                                <li><a href="../User/shoppingCart.aspx">Cart</a></li>
                                <li><a href="../User/userGallery.aspx">Gallery</a></li>
                                <li><a href="../User/ourChefs.aspx">Our Chefs</a></li>
                                <li class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label><i class="fa fa-caret-down"></i></a>
                                    <div class="dropdown-menu">
                                        <a href="userLogin.aspx" class="dropdown-item">
                                            <asp:Label ID="lblLogin" runat="server" Text="Login"></asp:Label></a>
                                        <div class="dropdown-divider"></div>
                                        <a href="../User/userProfile.aspx" class="dropdown-item">
                                            <asp:Label ID="lblUserProfile" runat="server" Text="User Profile"></asp:Label></a>
                                    </div>
                                </li>
                            </ul>                            
                        </div><!--/.nav-collapse -->       
                    </div>          
                </nav> 
            </header>
            <!-- End header section -->

            <!-- Start Chef Section -->
            <section id="mu-chefs">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mu-chef-area">

                                <div class="mu-title">
                                    <span class="mu-subtitle">Our Professionals</span>
                                    <h2>MASTER CHEFS</h2>
                                </div>

                                <div class="mu-chef-content">
                                    <ul class="mu-chef-nav">
                                        <li>
                                            <div class="mu-single-chef">
                                                <figure class="mu-single-chef-img">
                                                    <img src="../assets/img/chef/chef-1.jpg" alt="chef img">
                                                </figure>
                                                <div class="mu-single-chef-info">
                                                    <h4>Simon Jonson</h4>
                                                    <span>Head Chef</span>
                                                </div>
                                                <div class="mu-single-chef-social">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                                </div>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="mu-single-chef">
                                                <figure class="mu-single-chef-img">
                                                    <img src="../assets/img/chef/chef-2.jpg" alt="chef img">
                                                </figure>
                                                <div class="mu-single-chef-info">
                                                    <h4>Kelly Wenzel</h4>
                                                    <span>Pizza Chef</span>
                                                </div>
                                                <div class="mu-single-chef-social">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                                </div>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="mu-single-chef">
                                                <figure class="mu-single-chef-img">
                                                    <img src="../assets/img/chef/chef-3.jpg" alt="chef img">
                                                </figure>
                                                <div class="mu-single-chef-info">
                                                    <h4>Greg Hong</h4>
                                                    <span>Grill Chef</span>
                                                </div>
                                                <div class="mu-single-chef-social">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                                </div>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="mu-single-chef">
                                                <figure class="mu-single-chef-img">
                                                    <img src="../assets/img/chef/chef-4.jpg" alt="chef img">
                                                </figure>
                                                <div class="mu-single-chef-info">
                                                    <h4>Marty Fukuda</h4>
                                                    <span>Burger Chef</span>
                                                </div>
                                                <div class="mu-single-chef-social">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                                </div>
                                            </div>
                                        </li>  

                                        <li>
                                            <div class="mu-single-chef">
                                                <figure class="mu-single-chef-img">
                                                    <img src="../assets/img/chef/chef-5.jpg" alt="chef img">
                                                </figure>
                                                <div class="mu-single-chef-info">
                                                    <h4>Simon Jonson</h4>
                                                    <span>Head Chef</span>
                                                </div>
                                                <div class="mu-single-chef-social">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                                </div>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="mu-single-chef">
                                                <figure class="mu-single-chef-img">
                                                    <img src="../assets/img/chef/chef-1.jpg" alt="chef img">
                                                </figure>
                                                <div class="mu-single-chef-info">
                                                    <h4>Kelly Wenzel</h4>
                                                    <span>Pizza Chef</span>
                                                </div>
                                                <div class="mu-single-chef-social">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                                </div>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="mu-single-chef">
                                                <figure class="mu-single-chef-img">
                                                    <img src="../assets/img/chef/chef-2.jpg" alt="chef img">
                                                </figure>
                                                <div class="mu-single-chef-info">
                                                    <h4>Greg Hong</h4>
                                                    <span>Grill Chef</span>
                                                </div>
                                                <div class="mu-single-chef-social">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                                </div>
                                            </div>
                                        </li>
                
                                        <li>
                                            <div class="mu-single-chef">
                                                <figure class="mu-single-chef-img">
                                                    <img src="../assets/img/chef/chef-3.jpg" alt="chef img">
                                                </figure>
                                                <div class="mu-single-chef-info">
                                                    <h4>Marty Fukuda</h4>
                                                    <span>Burger Chef</span>
                                                </div>
                                                <div class="mu-single-chef-social">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                                </div>
                                            </div>
                                        </li>                      
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Chef Section -->

            <!-- Start Footer -->
            <footer id="mu-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mu-footer-area">
                                <div class="mu-footer-social">
                                    <a href="#"><span class="fa fa-facebook"></span></a>
                                    <a href="#"><span class="fa fa-twitter"></span></a>
                                    <a href="#"><span class="fa fa-google-plus"></span></a>
                                    <a href="#"><span class="fa fa-linkedin"></span></a>
                                    <a href="#"><span class="fa fa-youtube"></span></a>
                                </div>
                                <div class="mu-footer-copyright">
                                    <p>&copy; Copyright <a rel="nofollow" href="http://markups.io">markups.io</a>. All right reserved.</p>
                                </div>         
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- End Footer -->
  
            <!-- jQuery library -->
            <script src="../assets/js/jquery.min.js"></script>  
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="../assets/js/bootstrap.js"></script>   
            <!-- Slick slider -->
            <script type="text/javascript" src="../assets/js/slick.js"></script>
            <!-- Counter -->
            <script type="text/javascript" src="../assets/js/simple-animated-counter.js"></script>
            <!-- Gallery Lightbox -->
            <script type="text/javascript" src="../assets/js/jquery.magnific-popup.min.js"></script>
            <!-- Date Picker -->
            <script type="text/javascript" src="../assets/js/bootstrap-datepicker.js"></script> 
            <!-- Ajax contact form  -->
            <script type="text/javascript" src="../assets/js/app.js"></script>
 
            <!-- Custom js -->
            <script src="../assets/js/custom.js"></script>

        </form>
    </body>
</html>

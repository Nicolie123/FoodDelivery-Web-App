<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="foodDeliveryAssignment._Default" %>

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
        <link href="style.css" rel="stylesheet">    

   
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
                                <li><a href="#mu-about-us">About Us</a></li>                       
                                <li><a href="../User/userProductCatalog.aspx">Menu</a></li> 
                                <li><a href="../User/userOrderHistory.aspx">Order History</a></li>
                                <li><a href="../User/userOrderStatus.aspx">Order Status</a></li>
                                <li><a href="../User/shoppingCart.aspx">Cart</a></li>
                                <li><a href="#mu-gallery">Gallery</a></li>
                                <li><a href="#mu-chef">Our Chefs</a></li> 
                                <li class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label><i class="fa fa-caret-down"></i></a>
                                    <div class="dropdown-menu">
                                        <a href="../User/userLogin.aspx" class="dropdown-item">
                                            <asp:Label ID="lblLogin" runat="server" Text="Login"></asp:Label></a>
                                        <div class="dropdown-divider"></div>
                                        <a href="User/userProfile.aspx" class="dropdown-item">
                                            <asp:Label ID="lblUserProfile" runat="server" Text="User Profile"></asp:Label></a>
                                    </div>
                                </li>
                            </ul>                            
                        </div><!--/.nav-collapse -->       
                    </div>          
                </nav> 
            </header>
            <!-- End header section -->
 

            <!-- Start slider  -->
            <section id="mu-slider">
                <div class="mu-slider-area"> 

                    <!-- Top slider -->
                    <div class="mu-top-slider">

                        <!-- Top slider single slide -->
                        <div class="mu-top-slider-single">
                            <img src="../assets/img/slider/1.jpeg" alt="img">
                            <!-- Top slider content -->
                            <div class="mu-top-slider-content">
                                <span class="mu-slider-small-title">Welcome</span>
                                <h2 class="mu-slider-title">To The FeastY</h2>
                                <p>The ultimate food delivery website, in order to provide food lovers around the world with an unmatched user experience.</p>           
                                <asp:Button ID="Button3" class="btn btn-warning mu-order-btn" runat="server" Text="Order Now" OnClick="Button3_Click" />
                                
                            </div>
                            <!-- / Top slider content -->
                        </div>
                        <!-- / Top slider single slide -->    

                            <!-- Top slider single slide -->
                        <div class="mu-top-slider-single">
                            <img src="../assets/img/slider/2.jpeg" alt="img">
                            <!-- Top slider content -->
                            <div class="mu-top-slider-content">
                                <span class="mu-slider-small-title">The Unique</span>
                                <h2 class="mu-slider-title">Variety Taste</h2>
                                <p>Feasty offers you with a wide variety of food categories to suit your taste.</p>           
                                <asp:Button ID="Button2" class="btn btn-warning mu-order-btn" runat="server" Text="Order Now" OnClick="Button2_Click" />

                            </div>
                            <!-- / Top slider content -->
                        </div>
                        <!-- / Top slider single slide --> 

                        <!-- Top slider single slide -->
                        <div class="mu-top-slider-single">
                            <img src="../assets/img/slider/3.jpeg" alt="img">
                            <!-- Top slider content -->
                            <div class="mu-top-slider-content">
                                <span class="mu-slider-small-title">Delicious</span>
                                <h2 class="mu-slider-title">Spicy Masalas</h2>
                                <p>Tantalizing flavors of spicy chicken masala" or "Deliciously fiery masala lamb curry.</p>           
                                <asp:Button ID="Button1" class="btn btn-warning mu-order-btn" runat="server" Text="Order Now" OnClick="Button1_Click" />
                            </div>
                            <!-- / Top slider content -->
                        </div>
                        <!-- / Top slider single slide -->   

                    </div>
                </div>
            </section>
            <!-- End slider  -->

            <!-- Start About us -->
            <section id="mu-about-us">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mu-about-us-area">

                                <div class="mu-title">
                                    <span class="mu-subtitle">Discover</span>
                                    <h2>ABOUT US</h2>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mu-about-us-left">     
                                            <img src="../assets/img/about-us.png" alt="img">           
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mu-about-us-right">
                                            <p class="about-us-justify">At FeastY, we're passionate about making it easy for you to enjoy your favorite food from your favorite restaurants. Our online food delivery platform offers a wide range of cuisines and eateries to choose from, all conveniently available for delivery to your doorstep. Whether you're craving Western, Chinese, or something in between, we've got you covered. Our user-friendly website and intuitive interface make it easy to browse menus, customize orders, and track deliveries in real-time. We take pride in offering a reliable, hassle-free service that helps you enjoy great food without leaving the comfort of your home.</p>                              
                                            <p class="about-us-justify">Here are some potential aims and objectives for FeastY:</p>
                                            <ul>
                                                <li>To provide a convenient and user-friendly platform for ordering food online.</li>
                                                <li>To offer a diverse range of cuisines and restaurants for customers to choose from.</li>
                                                <li>To ensure prompt and reliable delivery of food orders.</li>                    
                                                <li>To offer competitive prices and special deals to customers.</li>
                                                <li>To prioritize customer satisfaction and provide responsive customer service.</li>
                                                <li>To continually improve our technology and operations to enhance the customer experience.</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End About us -->

            <!-- Start Counter Section -->
            <section id="mu-counter">
                <div class="mu-counter-overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="mu-counter-area">

                                    <ul class="mu-counter-nav">

                                        <li class="col-md-3 col-sm-3 col-xs-12">
                                            <div class="mu-single-counter">
                                                <span>Fresh</span>
                                                <h3><span class="counter-value" data-count="150">0</span><sup>+</sup></h3>
                                                <p>Breakfast Items</p>
                                            </div>
                                        </li>

                                        <li class="col-md-3 col-sm-3 col-xs-12">
                                            <div class="mu-single-counter">
                                                <span>Delicious</span>
                                                <h3><span class="counter-value" data-count="60">0</span><sup>+</sup></h3>
                                                <p>Lunch Items</p>
                                            </div>
                                        </li>

                                        <li class="col-md-3 col-sm-3 col-xs-12">
                                            <div class="mu-single-counter">
                                                <span>Hot</span>
                                                <h3><span class="counter-value" data-count="45">0</span><sup>+</sup></h3>
                                                <p>Coffee Items</p>
                                            </div>
                                        </li>

                                        <li class="col-md-3 col-sm-3 col-xs-12">
                                            <div class="mu-single-counter">
                                                <span>Satisfied</span>
                                                <h3><span class="counter-value" data-count="6560">0</span><sup>+</sup></h3>
                                                <p>Customers</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Counter Section -->

            <!-- Start Gallery -->
            <section id="mu-gallery">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mu-gallery-area">

                                <div class="mu-title">
                                    <span class="mu-subtitle">Discover</span>
                                    <h2>Our Gallery</h2>
                                </div>

                                <div class="mu-gallery-content">
            
                                    <!-- Start gallery image -->
                                    <div class="mu-gallery-body">
                                        <!-- start single gallery image -->
                                        <div class="mu-single-gallery col-md-4">
                                            <div class="mu-single-gallery-item">
	                                            <figure class="mu-single-gallery-img">
	                                                <a class="mu-imglink" href="../assets/img/gallery/1.jpg">
                                                        <img alt="img" src="../assets/img/gallery/1.jpg">
                                                        <div class="mu-single-gallery-info">
                                                            <img class="mu-view-btn" src="../assets/img/plus.png" alt="plus icon img">
                                                        </div> 
                                                    </a>
	                                            </figure>            
                  	                        </div>
                                        </div>
                                        <!-- End single gallery image -->

                                        <!-- start single gallery image -->
                                        <div class="mu-single-gallery col-md-4">
                  	                        <div class="mu-single-gallery-item">
                                                <figure class="mu-single-gallery-img">
                                                    <a class="mu-imglink" href="../assets/img/gallery/2.jpg">
                                                        <img alt="img" src="../assets/img/gallery/2.jpg">
                                                        <div class="mu-single-gallery-info">
                                                            <img class="mu-view-btn" src="../assets/img/plus.png" alt="plus icon img">
                                                        </div> 
                                                    </a>
                                                </figure>            
                                            </div>
                                        </div>               
                                        <!-- End single gallery image -->

                                        <!-- start single gallery image -->
                                        <div class="mu-single-gallery col-md-4">                  
                  	                        <div class="mu-single-gallery-item">
                                                <figure class="mu-single-gallery-img">
                                                    <a class="mu-imglink" href="../assets/img/gallery/3.jpg">
                                                        <img alt="img" src="../assets/img/gallery/3.jpg">
                                                        <div class="mu-single-gallery-info">
                                                            <img class="mu-view-btn" src="../assets/img/plus.png" alt="plus icon img">
                                                        </div> 
                                                    </a>
                                                </figure>            
                                            </div>
                                        </div>               
                                        <!-- End single gallery image -->

                                        <!-- start single gallery image -->
                                        <div class="mu-single-gallery col-md-4">                  
                  	                        <div class="mu-single-gallery-item">
                                                <figure class="mu-single-gallery-img">
                                                <a class="mu-imglink" href="../assets/img/gallery/4.jpg">
                                                    <img alt="img" src="../assets/img/gallery/4.jpg">
                                                    <div class="mu-single-gallery-info">
                                                        <img class="mu-view-btn" src="../assets/img/plus.png" alt="plus icon img">
                                                    </div> 
                                                </a>
                                                </figure>            
                                            </div>
                                        </div>
                                        <!-- End single gallery image -->

                                        <!-- start single gallery image -->
                                        <div class="mu-single-gallery col-md-4">                  
                  	                        <div class="mu-single-gallery-item">
                                                <figure class="mu-single-gallery-img">
                                                    <a class="mu-imglink" href="../assets/img/gallery/5.jpg">
                                                        <img alt="img" src="../assets/img/gallery/5.jpg">
                                                        <div class="mu-single-gallery-info">
                                                            <img class="mu-view-btn" src="../assets/img/plus.png" alt="plus icon img">
                                                        </div> 
                                                    </a>
                                                </figure>            
                                            </div>
                                        </div>               
                                        <!-- End single gallery image -->  

                                        <!-- start single gallery image -->
                                        <div class="mu-single-gallery col-md-4">                  
                                            <div class="mu-single-gallery-item">
                                                <figure class="mu-single-gallery-img">
                                                    <a class="mu-imglink" href="../assets/img/gallery/6.jpg">
                                                        <img alt="img" src="../assets/img/gallery/6.jpg">
                                                        <div class="mu-single-gallery-info">
                                                            <img class="mu-view-btn" src="../assets/img/plus.png" alt="plus icon img">
                                                        </div> 
                                                    </a>
                                                </figure>            
                                            </div>
                                        </div>
                                        <!-- End single gallery image -->

                                        <!-- start single gallery image -->
                                        <div class="mu-single-gallery col-md-4">                  
                  	                        <div class="mu-single-gallery-item">
                                                <figure class="mu-single-gallery-img">
                                                    <a class="mu-imglink" href="../assets/img/gallery/7.jpg">
                                                        <img alt="img" src="../assets/img/gallery/7.jpg">
                                                        <div class="mu-single-gallery-info">
                                                            <img class="mu-view-btn" src="../assets/img/plus.png" alt="plus icon img">
                                                        </div> 
                                                    </a>
                                                </figure>            
                                            </div>
                                        </div>               
                                        <!-- End single gallery image -->

                                        <!-- start single gallery image -->
                                        <div class="mu-single-gallery col-md-4">                  
                  	                        <div class="mu-single-gallery-item">
                                                <figure class="mu-single-gallery-img">
                                                    <a class="mu-imglink" href="../assets/img/gallery/8.jpg">
                                                        <img alt="img" src="../assets/img/gallery/8.jpg">
                                                        <div class="mu-single-gallery-info">
                                                            <img class="mu-view-btn" src="../assets/img/plus.png" alt="plus icon img">
                                                        </div> 
                                                    </a>
                                                </figure>            
                                            </div>
                                        </div>               
                                        <!-- End single gallery image -->

                                        <!-- start single gallery image -->
                                        <div class="mu-single-gallery col-md-4">                  
                  	                        <div class="mu-single-gallery-item">
                                                <figure class="mu-single-gallery-img">
                                                    <a class="mu-imglink" href="../assets/img/gallery/9.jpg">
                                                        <img alt="img" src="../assets/img/gallery/9.jpg">
                                                        <div class="mu-single-gallery-info">
                                                            <img class="mu-view-btn" src="../assets/img/plus.png" alt="plus icon img">
                                                        </div> 
                                                    </a>
                                                </figure>            
                                            </div>
                                        </div>
                                        <!-- End single gallery image -->  
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Gallery -->
          
            <!-- Start Client Testimonial section -->
            <section id="mu-client-testimonial">
                <div class="mu-overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="mu-client-testimonial-area">

                                    <div class="mu-title">
                                        <span class="mu-subtitle">Testimonials</span>
                                        <h2>What Customers Say</h2>
                                    </div>

                                    <!-- testimonial content -->
                                    <div class="mu-testimonial-content">
                                        <!-- testimonial slider -->
                                        <ul class="mu-testimonial-slider">
                                            <li>
                                                <div class="mu-testimonial-single">                   
                                                    <div class="mu-testimonial-info">
                                                        <p>I love how easy it is to order food from my favorite restaurants through FeastY! The user interface is intuitive, the options are diverse, and the delivery is always on time. Highly recommend!</p>
                                                    </div>
                                                    <div class="mu-testimonial-bio">
                                                        <p>- David Muller</p>                      
                                                    </div>
                                                </div>
                                            </li>

                                            <li>
                                                <div class="mu-testimonial-single">                   
                                                    <div class="mu-testimonial-info">
                                                        <p>FeastY has completely transformed the way I order food. The website is user-friendly, and the ordering process is seamless. Plus, their customer service is top-notch! I can't imagine going back to the old way of ordering food.</p>
                                                    </div>
                                                    <div class="mu-testimonial-bio">
                                                        <p>- Ricardo Lie</p>                      
                                                    </div>
                                                </div>
                                            </li>

                                            <li>
                                                <div class="mu-testimonial-single">                   
                                                    <div class="mu-testimonial-info">
                                                        <p>As someone who loves to try out new restaurants, FeastY has been a godsend. The platform allows me to discover new eateries in my area and order from them with ease. The delivery is always prompt and the food quality is top-notch. Thank you, FeastY!</p>
                                                    </div>
                                                    <div class="mu-testimonial-bio">
                                                        <p>- Pragna Dewi</p>                      
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Client Testimonial section -->
  
            <!-- Start Chef Section -->
            <section id="mu-chef">
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
            <script src="assets/js/jquery.min.js"></script>  
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="assets/js/bootstrap.js"></script>   
            <!-- Slick slider -->
            <script type="text/javascript" src="assets/js/slick.js"></script>
            <!-- Counter -->
            <script type="text/javascript" src="assets/js/simple-animated-counter.js"></script>
            <!-- Gallery Lightbox -->
            <script type="text/javascript" src="assets/js/jquery.magnific-popup.min.js"></script>
            <!-- Date Picker -->
            <script type="text/javascript" src="assets/js/bootstrap-datepicker.js"></script> 
            <!-- Ajax contact form  -->
            <script type="text/javascript" src="assets/js/app.js"></script>
 
            <!-- Custom js -->
            <script src="assets/js/custom.js"></script>

        </form>
    </body>
</html>

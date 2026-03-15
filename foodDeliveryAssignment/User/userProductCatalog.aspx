<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userProductCatalog.aspx.cs" Inherits="foodDeliveryAssignment.Admin.adminProducts" %>

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

            <!-- Start About us -->
            <section id="mu-registration-not-default">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mu-about-us-area">

                                <div class="mu-title">
                                    <span class="mu-subtitle"></span>
                                    <h2 class="registration-title-padding">Product Menu Catalog</h2>
                                </div>

                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-3 category-filter">
                                            <div class="panel panel-success">
                                                <div class="panel-body">
                                                    <ul class="nav nav-pills nav-stacked">
                                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="dsCategory" OnItemCommand="Repeater1_ItemCommand">
                                                            <HeaderTemplate>
                                                                <li>
                                                                    <asp:LinkButton CommandName="allProducts" ID="allProducts" runat="server">All Products</asp:LinkButton>
                                                                </li>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <li>
                                                                    <asp:LinkButton CommandName="catSelect" ID="linkButton" runat="server"><%# Eval("name") %></asp:LinkButton>
                                                                    <asp:Label ID="lblCID" runat="server" Text='<%# Eval("cid") %>' Visible="false"></asp:Label>
                                                                </li>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </ul>
                                                </div>
                                            </div>
                    
                                        <asp:SqlDataSource ID="dsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:FeastyDbsConnection %>" SelectCommand="SELECT * FROM [tblCategory]"></asp:SqlDataSource>
                                        </div>

                                        <div class="col-md-8">
                                            <div class="product-catalog-padding">

                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FeastyDbsConnection %>" SelectCommand="select top 6 * from tblProducts order by newid()"></asp:SqlDataSource>
                                                <asp:DataList ID="DataList1" runat="server" DataKeyField="pid" RepeatColumns="3" RepeatDirection="Horizontal" CellPadding="10" CellSpacing="10" OnItemCommand="DataList1_ItemCommand">
                                                    <ItemTemplate>
                                                        <div class="product-card">
                                                            <asp:Image ID="Image1" CssClass="product-card-img" ImageUrl='<%# Eval("picture") %>' runat="server" />
                                                            <div class="product-details">

                                                                <div class="product-id">
                                                                    <span></span><asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' Visible="False" />
                                                                </div>

                                                                <h3 class="product-card-h3"><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></h3>

                                                                <p class="product-card-p"><asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' /></p>
                                                    
                                                    
                                                                <h6 class="product-card-h6"><span>RM </span><asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></h6>

                                                                <asp:Button ID="Button1" CommandArgument='<%# Eval("pid") %>' CommandName="productDetails" CssClass="product-card-button" runat="server" Text="Details" />
                                                            </div>                                                                                              
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:DataList>
                                            </div>
                                        </div>
                                    </div>
                                </div>                
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End About us -->

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

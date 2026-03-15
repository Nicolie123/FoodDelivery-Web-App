<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userOrderStatus.aspx.cs" Inherits="foodDeliveryAssignment.User.userOrderStatus" %>

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
                                    <h2 class="registration-title-padding">Your Order</h2>
                                </div>

                                <div class="row border-feedback">
                                    <div class="col-lg-12 col-md-5">
                                        <asp:Label ID="lblError" runat="server" Text="Label" ForeColor="Red" Visible="false"></asp:Label>
                                        <br/>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FeastyDbsConnection %>" SelectCommand="SELECT * FROM [tblOrder] WHERE ([UID] = @UID)">
                                            <SelectParameters>
                                                <asp:SessionParameter DefaultValue="0" Name="UID" SessionField="id" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                            <asp:Label ID="lblOrderID" runat="server" Text="Select your OrderID: "/>&nbsp&nbsp&nbsp&nbsp
                                            <asp:DropDownList ID="ddlOrderID" runat="server" AutoPostBack="True" DataTextField="OID" DataValueField="OID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ddlOrderID_SelectedIndexChanged"></asp:DropDownList>

                                        <asp:DataList ID="DataList1" runat="server" CssClass="my-datalist">

                                            <HeaderTemplate>
                                                <table class="table table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th>Order ID</th>
                                                            <th>Receipt ID</th>
                                                            <th>Status</th> 
                                                            <th></th>
                                                            <th class="text-center">Date Added</th>
                                   
                                                        </tr>
                                                    </thead>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table class="table table-hover">
                                                    <tr>
                            
                                                        <td>
                                                                <div class="media-body">
                                                                    <h4 class="media-heading"><a href="#"> <%# Eval("OID") %></a></h4>
                                                                    <%-- <h5 class="media-heading"><%# Eval("description") %></h5>
                                                                    <asp:Label ID="lblSCID" runat="server" Text='OrderID: <%# Eval("scid") %>'></asp:Label>--%>
                                                                </div>    
                                                        </td>
                          
                                                        <td class="col-sm-1 col-md-1" style="text-align: center">
                                                            <%-- <asp:Label ID="txtQTY"  Text='<%# Eval("RID") %>' runat="server"></asp:Label>--%>
                                                                <h5 class="media-heading"><%# Eval("RID") %></h5>

                                                        </td>

                                                        <td >
                                                            <div>
                                                                <h5 class="media-heading"><%# Eval("Status") %></h5>
                            
                                                                &nbsp;&nbsp;&nbsp;  
                                    
                                                            </div>
                                 
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <asp:Image ID="statusImg" CssClass="thumbnail pull-left" runat="server" Style="width: 50px; height: 50px;" />
                                                            </div>
                                                        </td>
                                                        <td class="col-sm-1 col-md-1 text-center"><strong>RM<%# Eval("dtAdded") %></strong></td>
                                                        <%--<td class="col-sm-1 col-md-1 text-center"><strong>RM<%# Eval("price") %></strong></td>
                                                        <td class="col-sm-1 col-md-1 text-center"><strong>RM<asp:Label ID="Label1" runat="server" Text='<%# Eval("[Sub Total]") %>'></asp:Label></strong></td>--%>
                            
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                    
                                        </asp:DataList>
                                    </div> 
                                    
                                    <div class="row feedback-form">
                                        <div class="col-md-12">
                                            <div>
                                                <hr class="horizontal-rule-feedback">
                                                <h2 class="feedback-title-padding">Feedback Form</h2>
                                                <label for="rating">Rating:</label>
                                                <asp:RadioButtonList ID="rblRating" runat="server">
                                                    <asp:ListItem Text="1" Value="1" />
                                                    <asp:ListItem Text="2" Value="2" />
                                                    <asp:ListItem Text="3" Value="3" />
                                                    <asp:ListItem Text="4" Value="4" />
                                                    <asp:ListItem Text="5" Value="5" />
                                                </asp:RadioButtonList>
                                                <br />
                                                <label for="comment">Comment:</label>
                                                <br />
                                                <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>
                                                <br />
                                                <asp:Button ID="btnSubmit" runat="server" Text="Submit Feedback" OnClick="btnSubmitFeedback_Click"/>
                                                <br />
                                                <asp:Label ID="lblDtAdded" runat="server" Text="Label" Visible="false"></asp:Label>
                                                <br />
                                                <asp:Label ID="lblMessage" runat="server" Text="Label" Visible="false"></asp:Label>
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

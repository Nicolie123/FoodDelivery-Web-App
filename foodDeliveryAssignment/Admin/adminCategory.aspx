<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminCategory.aspx.cs" Inherits="foodDeliveryAssignment.Admin.adminCategory" %>

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
                                <li><a href="../Admin/adminPage.aspx">Home</a></li>
                                <li><a href="../Admin/adminCategory.aspx">Manage Category</a></li> 
                                <li><a href="../Admin/adminProductManagement.aspx">Manage Product</a></li>
                                <li><a href="../Admin/adminManageOrder.aspx">Manage Order</a></li>
                                <li><a href="../Admin/adminManageUser.aspx">Manage User</a></li>
                                <li class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label><i class="fa fa-caret-down"></i></a>
                                    <div class="dropdown-menu">
                                        <a href="../User/userLogin.aspx" class="dropdown-item">
                                            <asp:Label ID="lblLogin" runat="server" Text="Logout"></asp:Label></a>
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
                                    <h2 class="registration-title-padding">Category Management</h2>
                                </div>

                                <div class="row border-registration">
                                    <div class="col-md-6">
                                        <div class="mu-about-us-left">     
                                            <asp:GridView ID="CategoryGridView" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cid" ForeColor="#333333" GridLines="None" PageSize="5" CssClass="table table-responsive" OnSelectedIndexChanged="CategoryGridView_SelectedIndexChanged">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:CommandField ShowSelectButton="True" />
                                                    <asp:BoundField DataField="cid" HeaderText="cid" HeaderStyle-CssClass="text-center" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                                                    <asp:BoundField DataField="name" HeaderText="name" HeaderStyle-CssClass="text-center" SortExpression="name" />
                                                    <asp:BoundField DataField="description" HeaderText="description" HeaderStyle-CssClass="text-center" SortExpression="description" />
                                                    <asp:BoundField DataField="dtAdded" HeaderText="dtAdded" HeaderStyle-CssClass="text-center" SortExpression="dtAdded" />
                                                </Columns>
                                                <EditRowStyle BackColor="#7C6F57" />
                                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#E3EAEB" />
                                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                                            </asp:GridView>          
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mu-about-us-right">
                                            
                                            <p>Fill the form below to Add / Update / Delete Product Category</p>
                                            <hr class="registration-hr">

                                            <asp:Label class="registration-label" runat="server" Text="Category ID: "></asp:Label>
                                            <asp:Label ID="lblCID" class="registration-label" runat="server" Text="lblCID"></asp:Label> <br />

                                            <asp:Label ID="lblName" class="registration-label" runat="server" Text="Name: "></asp:Label>
                                            <asp:TextBox ID="txtName" class="registration-input" placeholder="Enter Category Name" runat="server"></asp:TextBox>

                                            <asp:Label ID="lblDescription" class="registration-label" runat="server" Text="Description: "></asp:Label>
                                            <asp:TextBox ID="txtDescription" class="registration-input" placeholder="Enter Description" runat="server"></asp:TextBox>

                                            <hr class="registration-hr">

                                            <asp:Button ID="btnAdd" class="registration-button" runat="server" Text="Add" OnClick="btnAdd_Click"/>
                                            <asp:Button ID="btnUpdate" class="registration-button" runat="server" Text="Update" OnClick="btnUpdate_Click"/>
                                            <asp:Button ID="btnDelete" class="registration-button" runat="server" Text="Delete" OnClick="btnDelete_Click"/>
                                         
                                            <asp:Label ID="lblDT" runat="server" Text="Label" Visible="False"></asp:Label>
                                            <asp:Label ID="lblMessage" runat="server" Text="Label" Font-Size="20pt" ForeColor="#0099FF"></asp:Label>

                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FeastyDbsConnection %>" DeleteCommand="DELETE FROM [tblCategory] WHERE [cid] = @cid" InsertCommand="INSERT INTO [tblCategory] ([name], [description], [dtAdded]) VALUES (@name, @description, @dtAdded)" SelectCommand="SELECT * FROM [tblCategory]" UpdateCommand="UPDATE [tblCategory] SET [name] = @name, [description] = @description, [dtAdded] = @dtAdded WHERE [cid] = @cid">
                                                <DeleteParameters>
                                                    <asp:ControlParameter ControlID="lblCID" Name="cid" PropertyName="Text" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:ControlParameter ControlID="txtName" Name="name" Type="String" />
                                                    <asp:ControlParameter ControlID="txtDescription" Name="description" Type="String" />
                                                    <asp:ControlParameter ControlID="lblDT" Name="dtAdded" Type="DateTime" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:ControlParameter ControlID="txtName" Name="name" PropertyName="Text" Type="String" />
                                                    <asp:ControlParameter ControlID="txtDescription" Name="description" PropertyName="Text" Type="String" />
                                                    <asp:ControlParameter ControlID="lblCID" Name="cid" PropertyName="Text" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>

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

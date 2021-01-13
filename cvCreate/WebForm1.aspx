<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="cvCreate.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head> 
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Resume - Start Bootstrap Theme</title>
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
    <link href="/dosyalar/css/styles.css" rel="stylesheet" />
    <%--<script src="/dosyalar/js/scripts.js"></script>--%>

    <!-- Core theme CSS (includes Bootstrap)-->

    <link href="/dosyalar/css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <span class="d-block d-lg-none">Clarence Taylor</span>
            <span class="d-none d-lg-block">

                <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="dosyalar/Dosyalar1/placeholder-girl.png" />
            </span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">Hakkında</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">Deneyimler</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">Eğitimler</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#interests">Hobiler</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#awards">Sertifikalar</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">Yetenekler</a></li>

            </ul>
        </div>
    </nav>
    <!-- Page Content-->
    <div class="container-fluid p-0">
        <!-- About-->
        <section class="resume-section" id="about">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="resume-section-content">
                        <h1 class="mb-0">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            <span class="text-primary">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("surname") %>'></asp:Label>
                            </span>
                        </h1>
                        <div class="subheading mb-5">
                            <b>Adres : </b>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("adress") %>'></asp:Label>
                            <b>E-mail :  </b>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("mail") %>'></asp:Label>
                            <a href="mailto:name@email.com">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                            </a>
                        </div>
                        <p class="lead mb-5">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("text") %>'> </asp:Label>
                        </p>
                        <div class="social-icons">
                            <a class="social-icon" href="#"><i class="fab fa-linkedin-in"></i></a>
                            <a class="social-icon" href="#"><i class="fab fa-github"></i></a>
                            <a class="social-icon" href="#"><i class="fab fa-twitter"></i></a>
                            <a class="social-icon" href="#"><i class="fab fa-facebook-f"></i></a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>
        <hr class="m-0" />
        <!-- Experience-->

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">
            <h2 class="ml-5">Deneyimler</h2>
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <div class="resume-section-content">
                        <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                            <div class="flex-grow-1">
                                <h3 class="mb-0">
                                    <asp:Label ID="Label7" runat="server" Text='<%#Eval("baslik") %>'></asp:Label></h3>

                                <div class="subheading mb-3">
                                    <asp:Label ID="Label8" runat="server" Text='<%#Eval("altbaslik") %>'></asp:Label>
                                </div>
                                <p>
                                    <asp:Label ID="Label9" runat="server" Text='<%#Eval("aciklama") %>'></asp:Label>
                                </p>
                            </div>
                            <div class="flex-shrink-0">
                                <span class="text-primary">
                                    <asp:Label ID="Label10" runat="server" Text='<%#Eval("tarih") %>'></asp:Label></span>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>
        <hr class="m-0" />
        <!-- Education-->

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="education">
            <h2 class="mb-5">Eğitim</h2>
            <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>
                    <div class="col-md-12">
                        <%-- <div class="resume-section-content">--%>
                        <%-- <div class="resume-item d-flex flex-column flex-md-row justify-content-between mb-5">--%>
                        <div class="resume-item d-flex flex-column flex-md-row mb-5">
                            <%-- <div class="flex-grow-1">--%>
                            <div class="resume-content mr-auto">
                                <h3 class="mb-0">
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("baslik") %>'></asp:Label></h3>
                                <div class="subheading mb-3">
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("altBaslik") %>'></asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("aciklama") %>'></asp:Label>
                                </div>
                                <p>
                                    <asp:Label ID="Label14" runat="server" Text='<%# Eval("genelNot") %>'></asp:Label>
                                </p>
                            </div>
                            <%--<div class="flex-shrink-0">--%>
                            <div class="resume-date text-md-right">
                                <span class="text-primary">
                                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("tarih") %>'></asp:Label></span>
                            </div>
                        </div>
                        <%--</div>--%>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>
        <hr class="m-0" />
                <section class="resume-section" id="interests">
            <div class="resume-section-content">
                <h2 class="mb-5">Hobiler</h2>
                <asp:Repeater ID="Repeater5" runat="server">
                    <ItemTemplate>
                    <p>
                 <asp:Label ID="Label16" runat="server" Text='<%# Eval("hobiler") %>'></asp:Label></p>
                  </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>
        <!-- awards-->   
        <section class="resume-section" id="awards">
            <div class="resume-section-content">
                <h2 class="mb-5">Beceriler</h2>
                <div class="subheading mb-3">Programlama Dilleri ve Araçları</div>
                <ul class="list-inline dev-icons">
                    <li class="list-inline-item"><i class="fab fa-html5"></i></li>
                    <li class="list-inline-item"><i class="fab fa-css3-alt"></i></li>
                    <li class="list-inline-item"><i class="fab fa-js-square"></i></li>
                    <li class="list-inline-item"><i class="fab fa-angular"></i></li>
                    <li class="list-inline-item"><i class="fab fa-react"></i></li>
                    <li class="list-inline-item"><i class="fab fa-node-js"></i></li>
                    <li class="list-inline-item"><i class="fab fa-sass"></i></li>
                    <li class="list-inline-item"><i class="fab fa-chrome"></i></li>
                    <li class="list-inline-item"><i class="fab fa-wordpress"></i></li>
                    <li class="list-inline-item"><i class="fab fa-gulp"></i></li>
                    <li class="list-inline-item"><i class="fab fa-java"></i></li>
                    <li class="list-inline-item"><i class="fab fa-npm"></i></li>
                </ul>
               
                <div class="subheading mb-3">Kullanılan Programlama Dilleri</div>
                <asp:Repeater ID="Repeater4" runat="server">
                    <ItemTemplate>

                   
                <ul class="fa-ul mb-0">
                    <li>
                       <%--<span class="fa-li"><i class="fas fa-check"></i></span>--%>
                        <asp:Label ID="Label18" runat="server" Text='<%#Eval("diller") %>'></asp:Label>
                    </li>
                </ul>
                 </ItemTemplate>
                </asp:Repeater></div>
        </section>
        <hr class="m-0" />
        <!-- Interests-->

        <hr class="m-0" />
        <!-- Awards-->
        <section class="resume-section" id="skills">
            <div class="resume-section-content">
                <h2 class="mb-5">Yetenekler</h2>
                <asp:Repeater ID="Repeater6" runat="server">
                    <ItemTemplate>
                        <ul class="fa-ul mb-0">
                            <li>
                                <span class="fa-li"><i class="fas fa-trophy text-warning"></i></span>
                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("yetenekler") %>'></asp:Label>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

    </div>
    <!-- Bootstrap core JS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Third party plugin JS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <!-- Core theme JS-->

    <script src="/dosyalar/js/scripts.js"></script>
</body>

</html>

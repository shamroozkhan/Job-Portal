<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="International_Jobs_Portal.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/style.css" />
    <title>International Job Portal</title>
</head>
<body>
     <div class="frstcont">
        <a href="signup/signup.aspx"><input type="button" value="Signup" /></a>
        <a href="login/login.aspx"><input type="button" value="Login" /></a>
        <header class="header">
            <a href="#home" class="logo">International Job Portal</a>
            <input class="menu-btn" type="checkbox" id="menu-btn" />
            <label class="menu-icon" for="menu-btn"><span class="navicon"></span></label>
            <ul class="menu">
                <li><a href="#home">Home</a></li>
                <li><a href="#profiles">Profiles</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#footer">Contact</a></li>
            </ul>
        </header>
    </div>
    <div id="carouselFade" class="carousel slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner"  id="home" role="listbox">
            <div class="item active"> 
            <asp:Image ID="Image1" runat="server" src="../images/back5.jpg"/>

            </div>
            <div class="item"> 
            <asp:Image ID="Image2" runat="server" src="../images/back2.jpg"/>

            </div>
            <div class="item"> 
            <asp:Image ID="Image3" runat="server" src="https://snap-photos.s3.amazonaws.com/img-thumbs/960w/D2ROMCUEIV.jpg"/>

            </div>
        </div>
        <a class="left carousel-control" href="#carouselFade" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carouselFade" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
         <%--<div class="circlecont">
                <a class="button circle" href="#about">Get Started</a>
            </div>--%>



        

    <div class="container">
	<div class="row">
		<div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000">
            <div class="MultiCarousel-inner">
          <asp:ListView ID="ListView2" runat="server">
            <ItemTemplate>
                <div class="item bck">
                    <%--<asp:Image CssClass='multislider' ID="Image2" ImageUrl='<%#"data:Image/jpg;base64," + Convert.ToBase64String((byte[])Eval("userPic")) %>'  runat="server" />--%>
                        <a class="multislidertext"><h4><%#Eval("firstName") %></h4></a>
                </div>
             </ItemTemplate>
           </asp:ListView>
                 
        </div>
            <button class="btn btn-primary leftLst"><</button>
            <button class="btn btn-primary rightLst">></button>
	</div>
	
</div>
    </div>
       </div>
        
         <!------------ Profiles --------->
     <div class="parallax4">
        <div id="profiles" class="wrap contactcont">
            <div class="container">
                <div class="cool-b4-form">
                    <h1 class="text-center pt-4"><a>Recent Profiles</a></h1>
                      <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <div>
                            <table>
                                    <div class='tile2'>
                                        <%--<asp:Image CssClass='tile-img2' ID="Image2" ImageUrl='<%#"data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("userPic")) %>'  runat="server" />--%>
                                        <div class='tile-info2'>
                                            <h3><span class="d1"><%#Eval("functionalArea") %></span></h3>
                                            <h4><span class="d2"><%#Eval("firstName") %></span><span class="d3"><%#Eval("lastName") %></span></h4>
                                            <p><span class="d4"><%#Eval("City") %></span>,<span class="d5"><%#Eval("country") %></span></p><br />
                                            <p><span class="d6">Sallery: <%#Eval("expectedSallery") %></span><span class="d7">Experience: <%#Eval("experience") %></span><span class="d8">View CV</span></p>
                                        </div>
                                    </div>
                            </table>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
                <a class="viewall" href="profiles/profiles.aspx">View All</a>
                </div>
            </div>
        </div>
    </div>


    <%----------- ABOUT ----------------%>
      <div id="about" class="parallax3">
        <div class="container">
            <div class=" aboutcont">
                <h1 class="profilesheading"><a href="profiles.aspx">About</a></h1>
                <img class="aboutimg" src="../images/people.jpg" alt="" />
            </div>
            <div class="aboutdata">
                Hi! We are Nathan Strandberg and Katie Kirk, two individuals with a passion for creativity —
                creativity
                makes us happy. We truly believe in the transformative power of illustration and design and their
                ability
                to simplify communications, elevate experiences, engage and inspire people everywhere. Good design
                and good
                relationships come from collaboration. We're excited to start a visual dialogue, learn about you,
                and make
                something beautiful together.
            </div>
        </div>
    </div>




   



    <!-------------------- FOOTER ----------------->

     <footer  id="footer" class="container9 section footer-classic context-dark bg-image" style="color: #000000;">
        <div class="container">
            <div class="row row-30">
                <div class="col-md-4 col-xl-5">
                    <div class="pr-xl-4"><a class="brand" href="index.aspx"><img class="brand-logo-light" src="images/agency/logo-inverse-140x37.png"
                                alt="" width="140" height="37" srcset="images/agency/logo-retina-inverse-280x74.png 2x" /></a>
                        <p>We are an award-winning creative agency, dedicated to the best result in web design,
                            promotion, business consulting, and marketing.</p>
                        <p class="rights"><span>©  </span><span class="copyright-year">2018</span><span> </span><span>PEZ</span><span>. </span><span>All
                                Rights Reserved.</span></p>
                    </div>
                </div>
                <div class="col-md-4">
                    <h5>Contacts</h5>
                    <dl class="contact-list">
                        <dt>Address:</dt>
                        <dd>SD 10, Suit no 38, Al-Zehra Center, Block G, North Nazimabad,Karachi.</dd>
                    </dl>
                    <dl class="contact-list">
                        <dt>email:</dt>
                        <dd><a href="mailto:#">info@pakeverzone.com</a></dd>
                    </dl>
                    <dl class="contact-list">
                        <dt>phones:</dt>
                        <dd><a href="tel:#">021-36676687</a>
                        </dd>
                    </dl>
                </div>
                <div class="col-md-4 col-xl-3">
                    <h5>Links</h5>
                    <ul class="nav-list">
                        <li><a href="#home">Home</a></li>
                        <li><a href="#profiles">Profiles</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
            <a href="admin/adminlogin.aspx" style="float:right;">Admin</a>
        </div>
    </footer>
        <style>
           
           
        </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="js/app.js"></script>
</body>
</html>

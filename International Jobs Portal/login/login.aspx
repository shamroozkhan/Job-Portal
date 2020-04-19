<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="International_Jobs_Portal.login.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../css/style.css" />
    <title>Internatonal Job Portal</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="frstcont">
        <a href="../signup/signup.aspx"><input type="button" value="Signup" /></a>
        <a href="login.aspx"><input type="button" value="Login" /></a>
        <header class="header">
            <a href="index.aspx" class="logo">Internatonal Job Portal</a>
            <input class="menu-btn" type="checkbox" id="menu-btn" />
            <label class="menu-icon" for="menu-btn"><span class="navicon"></span></label>
            <ul class="menu">
                <li><a href="../index.aspx">Home</a></li>
                <li><a href="../profiles/profiles.aspx">Profiles</a></li>
                <li><a href="../index.aspx">About</a></li>
                <li><a href="../index.aspx">Contact</a></li>
            </ul>
        </header>
    </div>

    <!------------------------ Signin ------------------------------>
    <div class="container">
        <div class="signupcont modal-content">
            <div class="signupcont2">
                <h1 class="prsnalinfo">Log In</h1>
                <label for="email"><b>Email</b></label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <label for="psw"><b>Password</b></label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <div class="clearfix">
                    <asp:Button ID="loginbtn" runat="server" Text="Log In" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </div>

    <!-------------------- FOOTER ----------------->
    <footer id="footer" class="container9 section footer-classic context-dark bg-image" style="color: #000000;">
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
                        <li><a href="../index.aspx">Home</a></li>
                        <li><a href="../profiles/profiles.aspx">Profiles</a></li>
                        <li><a href="../index.aspx">About</a></li>
                        <li><a href="../index.aspx">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    </form>

    <script src="../js/app.js"></script>
</body>
</html>

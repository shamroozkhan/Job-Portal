<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="International_Jobs_Portal.admin.adminlogin" %>

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
    <form id="form2" runat="server">
        <div class="frstcont">
        <a href="../signup/signup.aspx"><input type="button" value="Signup" /></a>
        <a href="../login/login.aspx"><input type="button" value="Login" /></a>
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
        <div class="container">
        <div class="signupcont modal-content">
            <div class="signupcont2">
                <h1 class="prsnalinfo">Sign In</h1>
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
        <asp:Label ID="lblErrormessage" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
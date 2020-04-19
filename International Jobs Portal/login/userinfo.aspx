﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userinfo.aspx.cs" Inherits="International_Jobs_Portal.login.userinfo" %>

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

        
    <!------------------------ PROFILES ------------------------------>
<div class="container">
            </div>
            <div class="admincont">
                <h1 class="profilesheading"><a href="userinfoe.aspx">Welcome!</a></h1>
                <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>--%>
                



        <asp:GridView OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" OnRowCommand="GridView1_RowCommand" ID="GridView1" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="ID" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">


            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
       <columns>
          <%-- <asp:TemplateField HeaderText="User Pic">
               <ItemTemplate>
                   <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl='<%#"data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("userPic")) %>'/>
               </ItemTemplate>
           </asp:TemplateField>--%>
           <asp:TemplateField HeaderText="firstName">
               <ItemTemplate>
                   <asp:Label Text='<%# Eval("firstName") %>' runat="server"/>
               </ItemTemplate>
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox1" Text='<%# Eval("firstName") %>' runat="server"></asp:TextBox>
               </EditItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="lastName">
               <ItemTemplate>
                   <asp:Label Text='<%# Eval("lastName") %>' runat="server"/>
               </ItemTemplate>
                <EditItemTemplate>
                   <asp:TextBox ID="TextBox2" Text='<%# Eval("lastName") %>' runat="server"></asp:TextBox>
               </EditItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender">
               <ItemTemplate>
                   <asp:Label Text='<%# Eval("gender") %>' runat="server"/>
               </ItemTemplate>
                <EditItemTemplate>
                   <asp:TextBox ID="TextBox3" Text='<%# Eval("gender") %>' runat="server"></asp:TextBox>
               </EditItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="email">
               <ItemTemplate>
                   <asp:Label Text='<%# Eval("email") %>' runat="server"/>
               </ItemTemplate>
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox4" Text='<%# Eval("email") %>' runat="server"></asp:TextBox>
               </EditItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Contact">
               <ItemTemplate>
                   <asp:Label Text='<%# Eval("contact") %>' runat="server"/>
               </ItemTemplate>
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox5" Text='<%# Eval("contact") %>' runat="server"></asp:TextBox>
               </EditItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Address">
               <ItemTemplate>
                   <asp:Label Text='<%# Eval("addres") %>' runat="server"/>
               </ItemTemplate>
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox6" Text='<%# Eval("addres") %>' runat="server"></asp:TextBox>
               </EditItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="City">
               <ItemTemplate>
                   <asp:Label Text='<%# Eval("city") %>' runat="server"/>
               </ItemTemplate>
                <EditItemTemplate>
                   <asp:TextBox ID="TextBox7" Text='<%# Eval("city") %>' runat="server"></asp:TextBox>
               </EditItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Country">
               <ItemTemplate>
                   <asp:Label Text='<%# Eval("country") %>' runat="server"/>
               </ItemTemplate>
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox8" Text='<%# Eval("country") %>' runat="server"></asp:TextBox>
               </EditItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Qualification">
               <ItemTemplate>
                   <asp:Label Text='<%# Eval("qualification") %>' runat="server"/>
               </ItemTemplate>
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox9" Text='<%# Eval("qualification") %>' runat="server"></asp:TextBox>
               </EditItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Functional Area">
               <ItemTemplate>
                   <asp:Label Text='<%# Eval("functionalArea") %>' runat="server"/>
               </ItemTemplate>
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox10" Text='<%# Eval("functionalArea") %>' runat="server"></asp:TextBox>
               </EditItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Experience">
               <ItemTemplate>
                   <asp:Label Text='<%# Eval("experience") %>' runat="server"/>
               </ItemTemplate>
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox11" Text='<%# Eval("experience") %>' runat="server"></asp:TextBox>
               </EditItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Expected Sallery">
               <ItemTemplate>
                   <asp:Label Text='<%# Eval("expectedSallery") %>' runat="server"/>
               </ItemTemplate>
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox12" Text='<%# Eval("expectedSallery") %>' runat="server"></asp:TextBox>
               </EditItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Password">
               <ItemTemplate>
                   <asp:Label Text='<%# Eval("pasword") %>' runat="server"/>
               </ItemTemplate>
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox13" Text='<%# Eval("pasword") %>' runat="server"></asp:TextBox>
               </EditItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField  HeaderText="Edit">
               <ItemTemplate>
                   <asp:ImageButton ImageUrl="~/images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit"  width="20px" Height="20px"/>
                   <%--<asp:ImageButton ImageUrl="~/images/logo.png" runat="server" CommandName="Delete" ToolTip="Delete"  width="20px" Height="20px"/>--%>
               </ItemTemplate>

               <EditItemTemplate>
                   <asp:ImageButton ImageUrl="~/images/save.png" runat="server" CommandName="Update" ToolTip="Update"  width="20px" Height="20px"/>
                   <asp:ImageButton ImageUrl="~/images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel"  width="20px" Height="20px"/>
                </EditItemTemplate>

               <FooterTemplate>
                   <%--<asp:ImageButton ImageUrl="~/images/logo.png" runat="server" CommandName="AddNew" ToolTip="AddNew"  width="20px" Height="20px"/>--%>
               </FooterTemplate>

           </asp:TemplateField>
       </columns>
     </asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Green"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Red"></asp:Label>

        
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="../js/app.js"></script>
</body>
</html>
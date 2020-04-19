<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="International_Jobs_Portal.signup.signup" %>

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
        <a href="signup.aspx"><input type="button" value="Signup" /></a>
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

    <!------------------------ SIGNUP ------------------------------>
    <div class="container">
        <div class="signupcont modal-content">
            <div class="signupcont2">
                <h1 class="prsnalinfo">Sign Up</h1>

                <hr />
                <h2 class="prsnalinfo">Personal Information</h2>
                <hr />

                <label for="fname"><b>First Name</b></label>
                <asp:TextBox  ID="firstName" runat="server" placeholder="Write First Name Here..." required="True"></asp:TextBox>
                <label for="lname"><b>Last Name</b></label>
                <asp:TextBox  ID="lastName" runat="server" placeholder="Write Last Name Here..." required="True"></asp:TextBox>
                <label for="gender"><b>Gender</b></label>
                <asp:DropDownList CssClass="dropdown" ID="gender" runat="server" required="True">
                    <asp:ListItem Selected="False" Value="">Select Here...</asp:ListItem>
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                    <asp:ListItem Value="Other">Other</asp:ListItem>
                </asp:DropDownList>
                <br />
                
                <label for="email"><b>Email</b></label>
                <asp:TextBox placeholder="Enter Email Here..." ID="email" runat="server" required="True"></asp:TextBox>

                <label for="contact"><b>Contact</b></label>
                <asp:TextBox  ID="contact" runat="server" placeholder="Write Contact Here..." required="True"></asp:TextBox>

                <label for="addres"><b>Address</b></label>
                <asp:TextBox  ID="address" runat="server" placeholder="Write Adderss Here..." required="True"></asp:TextBox>

                <label for="city"><b>City</b></label>
                <asp:TextBox  ID="city" runat="server" placeholder="Enter Your City Here..." required="True"></asp:TextBox>

                <label for="country"><b>Country</b></label>
                <asp:TextBox  ID="country" runat="server" placeholder="Enter Your Country Here..." required="True"></asp:TextBox>

                <label for="photo"><b>Upload Photo</b></label>
                <asp:FileUpload ID="upload_userPic" runat="server" required="True"/>

                <hr />
                <h2 class="prsnalinfo">Educational Information</h2>
                <hr />

                <label for="qualification"><b>Qualification</b></label>
                <asp:TextBox  ID="qualification" runat="server" placeholder="Enter Your Qualification Here..." required="True"></asp:TextBox>

                <label for="profession"><b>Functional Area</b></label>
                <br />
                <asp:DropDownList ID="functionalArea" CssClass="dropdown"  runat="server" required="True">
                    <asp:ListItem Selected="False" Value="">Select Here...</asp:ListItem>                    
                    <asp:ListItem Value="Accounts, Finance & Financial Services">Accounts, Finance & Financial Services</asp:ListItem>
                    <asp:ListItem Value="Administration">Administration</asp:ListItem>
                    <asp:ListItem Value="Advertising">Advertising</asp:ListItem>
                    <asp:ListItem Value="Architects & Construction">Architects & Construction</asp:ListItem>
                    <asp:ListItem Value="Client Services & Customer Support">Client Services & Customer Support</asp:ListItem>
                    <asp:ListItem Value="Computer Networking">Computer Networking</asp:ListItem>
                    <asp:ListItem Value="Corporate Affairs">Corporate Affairs</asp:ListItem>
                    <asp:ListItem Value="Creative Design">Creative Design</asp:ListItem>
                    <asp:ListItem Value="Data Entry">Data Entry</asp:ListItem>
                    <asp:ListItem Value="Database Administration (DBA)">Database Administration (DBA)</asp:ListItem>
                    <asp:ListItem Value="Distribution & Logistics">Distribution & Logistics</asp:ListItem>
                    <asp:ListItem Value="Engineering">Engineering</asp:ListItem>
                    <asp:ListItem Value="Executive Management">Executive Management</asp:ListItem>
                    <asp:ListItem Value="Field Operations">Field Operations</asp:ListItem>
                    <asp:ListItem Value="Hardwar">Hardware</asp:ListItem>
                    <asp:ListItem Value="Health & Medicine">Health & Medicine</asp:ListItem>
                    <asp:ListItem Value="Hotel/Restaurant Management">Hotel/Restaurant Management</asp:ListItem>
                    <asp:ListItem Value="Human Resources">Human Resources</asp:ListItem>
                    <asp:ListItem Value="Import & Export">Import & Export</asp:ListItem>
                    <asp:ListItem Value="Industrial Production">Industrial Production</asp:ListItem>
                    <asp:ListItem Value="Intern">Intern</asp:ListItem>
                    <asp:ListItem Value="Investment Operations">Investment Operations</asp:ListItem>
                    <asp:ListItem Value="Legal Affairs">Legal Affairs</asp:ListItem>
                    <asp:ListItem Value="Maintenance/Repair">Maintenance/Repair</asp:ListItem>
                    <asp:ListItem Value="Management Consulting">Management Consulting</asp:ListItem>
                    <asp:ListItem Value="Management Information System (MIS)">Management Information System (MIS)</asp:ListItem>
                    <asp:ListItem Value="Manufacturing">Manufacturing</asp:ListItem>
                    <asp:ListItem Value="Maritime & Shipping">Maritime & Shipping</asp:ListItem>
                    <asp:ListItem Value="Marketing">Marketing</asp:ListItem>
                    <asp:ListItem Value="Media - Print & Electronic">Media - Print & Electronic</asp:ListItem>
                    <asp:ListItem Value="Merchandising">Merchandising</asp:ListItem>
                    <asp:ListItem Value="Monitoring & Evaluation (M&E)">Monitoring & Evaluation (M&E)</asp:ListItem>
                    <asp:ListItem Value="Operations">Operations</asp:ListItem>
                    <asp:ListItem Value="Planning & Development">Planning & Development</asp:ListItem>
                    <asp:ListItem Value="Procurement">Procurement</asp:ListItem>
                    <asp:ListItem Value="Product Development">Product Development</asp:ListItem>
                    <asp:ListItem Value="Product Management">Product Management</asp:ListItem>
                    <asp:ListItem Value="Public Relations">Public Relations</asp:ListItem>
                    <asp:ListItem Value="Quality Assurance (QA)">Quality Assurance (QA)</asp:ListItem>
                    <asp:ListItem Value="Quality Control">Quality Control</asp:ListItem>
                    <asp:ListItem Value="Researcher">Researcher</asp:ListItem>
                    <asp:ListItem Value="Retail">Retail</asp:ListItem>
                    <asp:ListItem Value="Safety & Environment">Safety & Environment</asp:ListItem>
                    <asp:ListItem Value="Sales & Business Developments">Sales & Business Developments</asp:ListItem>
                    <asp:ListItem Value="Search Engine Optimization (SEO)">Search Engine Optimization (SEO)</asp:ListItem>
                    <asp:ListItem Value="Secretarial, Clerical & Front Office">Secretarial, Clerical & Front Office</asp:ListItem>
                    <asp:ListItem Value="Security">Security</asp:ListItem>
                    <asp:ListItem Value="Software & Web Development">Software & Web Development</asp:ListItem>
                    <asp:ListItem Value="Supply Chain Management">Supply Chain Management</asp:ListItem>
                    <asp:ListItem Value="Systems Analyst">Systems Analyst</asp:ListItem>
                    <asp:ListItem Value="Teachers/Education, Training & Development">Teachers/Education, Training & Development</asp:ListItem>
                    <asp:ListItem Value="Telemarketing">Telemarketing</asp:ListItem>
                    <asp:ListItem Value="Warehousing">Warehousing</asp:ListItem>
                    <asp:ListItem Value="Writer">Writer</asp:ListItem>
                </asp:DropDownList>

                <label for="experience"><b>Experience</b></label>
                <asp:DropDownList ID="experience" CssClass="dropdown" required="True" runat="server">
                    <asp:ListItem Selected="False" Value="">Select Here...</asp:ListItem>
                    <asp:ListItem Value="Fresh">Fresh</asp:ListItem>
                    <asp:ListItem Value="1 Year">1 Year</asp:ListItem>
                    <asp:ListItem Value="2 Year">2 Years</asp:ListItem>
                    <asp:ListItem Value="3 Year">3 Years</asp:ListItem>
                    <asp:ListItem Value="4 Year">4 Years</asp:ListItem>
                    <asp:ListItem Value="5 Year">5 Years</asp:ListItem>
                    <asp:ListItem Value="+5 Year">+5 Years</asp:ListItem>

                </asp:DropDownList>

                <label for="profession"><b>Expected Sallery</b></label>
                <asp:DropDownList ID="expectedSallery" CssClass="dropdown" required="True" runat="server" OnSelectedIndexChanged="expectedSallery_SelectedIndexChanged">
                    <asp:ListItem Selected="False" Value="">Select Here...</asp:ListItem>
                    <asp:ListItem Value="10,000 - 15,000">10,000 - 15,000</asp:ListItem>
                    <asp:ListItem Value="15,000 - 20,000">15,000 - 20,000</asp:ListItem>
                    <asp:ListItem Value="25,000 - 30,000">25,000 - 30,000</asp:ListItem>
                    <asp:ListItem Value="35,000 - 40,000">35,000 - 40,000</asp:ListItem>
                    <asp:ListItem Value="45,000 - 50,000">45,000 - 50,000</asp:ListItem>
                    <asp:ListItem Value="55,000 - 60,000">55,000 - 60,000</asp:ListItem>
                    <asp:ListItem Value="65,000 - 70,000">65,000 - 70,000</asp:ListItem>
                    <asp:ListItem Value="75,000 - 80,000">75,000 - 80,000</asp:ListItem>
                    <asp:ListItem Value="85,000 - 90,000">85,000 - 90,000</asp:ListItem>
                    <asp:ListItem Value="95,000 - 100,000">95,000 - 100,000</asp:ListItem>
                    <asp:ListItem Value="100,000 - 200,000">100,000 - 200,000</asp:ListItem>
                    <asp:ListItem Value="200,000 - 300,000">200,000 - 300,000</asp:ListItem>
                    <asp:ListItem Value="300,000 - 400,000">300,000 - 400,000</asp:ListItem>
                    <asp:ListItem Value="+400,000">+400,000</asp:ListItem>
                </asp:DropDownList>   

                <label for="cv"><b>Upload CV</b></label>
                <asp:FileUpload ID="upload_userCV" runat="server"  required="True"/>
                <hr />

                <label for="psw"><b>Password</b></label>
                <asp:TextBox  ID="pasword" runat="server" placeholder="Enter Your Password Here..." required="True"></asp:TextBox>

                <label for="psw-repeat"><b>Repeat Password</b></label>
                <asp:TextBox runat="server" placeholder="Enter Your Password Here..." required="True"></asp:TextBox>

                <div class="clearfix">
                 <asp:Button ID="signupbtn" runat="server" Text="Sign Up" OnClick="submitbtn_Click" />
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
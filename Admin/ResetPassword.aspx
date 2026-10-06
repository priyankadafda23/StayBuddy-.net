<%@ Page Title="Reset Password" Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="StayBuddy.Admin.ResetPassword" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server" id="head">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Reset Password - StayBuddy</title>
    <link href="~/Content/site.css" rel="stylesheet" />
</head>

<body class="reset-page">
<form id="form1" runat="server">

    <header class="reset-header">
        <div class="reset-logo">⌂ StayBuddy</div>
    </header>

    <main class="reset-main">
        <section class="reset-card">

            <div class="reset-icon">🔑</div>

            <h1>Create New Password</h1>
            <p class="reset-subtitle">Reset your password</p>

            <label for="txtCurrentPassword">Current Password</label>
            <asp:TextBox
                ID="txtCurrentPassword"
                runat="server"
                TextMode="Password"
                placeholder="Enter your current password">
            </asp:TextBox>

            <label for="txtNewPassword">New Password</label>
            <asp:TextBox
                ID="txtNewPassword"
                runat="server"
                TextMode="Password"
                placeholder="Enter your new password">
            </asp:TextBox>

            <asp:Label ID="lblMsg" runat="server" CssClass="msg"></asp:Label>

            <asp:Button
                ID="btnReset"
                runat="server"
                Text="Reset Password"
                CssClass="btn"
                OnClick="btnReset_Click" />

            <a class="back-login" href="<%= ResolveUrl("~/Admin/AdminLogin.aspx") %>">
                Back to Login
            </a>

        </section>
    </main>

    <footer class="site-footer">
        <div>
            <h3>⌂ StayBuddy</h3>
            <p>Find your perfect stays for students and working professionals.</p>
        </div>

        <div>
            <h4>Discover</h4>
            <a href="#">Paying Guest (PG)</a>
            <a href="#">Hostels</a>
            <a href="#">Rooms</a>
        </div>

        <div>
            <h4>Support</h4>
            <a href="#">About StayBuddy</a>
            <a href="#">FAQ</a>
            <a href="#">Privacy Policy</a>
        </div>

        <div>
            <h4>Contact Us</h4>
            <a href="mailto:support@staybuddy.com">support@staybuddy.com</a>
            <a href="tel:+919944582631">+91 99445 82631</a>
        </div>

        <div class="copyright">
            © 2026 StayBuddy. Made with ❤️ in India. All rights reserved.
        </div>
    </footer>

</form>
</body>
</html>

<%@ Page Title="Admin Login" Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="StayBuddy.Admin.AdminLogin" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server" id="head">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - StayBuddy</title>
    <link href="~/Content/site.css" rel="stylesheet" />
</head>

<body class="admin-login">
<form id="form1" runat="server">

    <section class="split">

        <!-- LEFT SIDE -->
        <div class="side">
            <div class="brand">⌂ StayBuddy</div>

            <h1>Manage stays and users</h1>
            <p>Login to your account and continue to manage.</p>
        </div>

        <!-- RIGHT SIDE -->
        <div class="formside">
            <div class="fbox">

                <h2>Welcome Back</h2>
                <small class="muted">Login to continue to your admin dashboard</small>

                <label for="txtEmail">Email</label>
                <asp:TextBox
                    ID="txtEmail"
                    runat="server"
                    TextMode="Email"
                    placeholder="Enter your email">
                </asp:TextBox>

                <label for="txtPassword">Password</label>
                <asp:TextBox
                    ID="txtPassword"
                    runat="server"
                    TextMode="Password"
                    placeholder="Enter password">
                </asp:TextBox>

                <div class="row">
                    <label class="inl">
                        <input type="checkbox" />
                        Remember me
                    </label>

                    <a href="<%= ResolveUrl("~/Admin/ResetPassword.aspx") %>">
                        Forgot Password?
                    </a>
                </div>

                <asp:Label ID="lblMsg" runat="server" CssClass="msg"></asp:Label>

                <asp:Button
                    ID="btnLogin"
                    runat="server"
                    Text="Login"
                    CssClass="btn"
                    OnClick="btnLogin_Click" />

            </div>
        </div>

    </section>

</form>
</body>
</html>

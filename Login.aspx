<%@ Page Title="Login" Language="C#" MasterPageFile="~/Auth.Master"
AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StayBuddy.Login" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
  <section class="split">
    <div class="side">
      <h1>Discover stays near your workplace or college</h1>
      <p>
        Log in to your account and continue to find hassle-free stays at one
        place.
      </p>
    </div>
    <div class="formside">
      <div class="fbox">
        <h2>Welcome Back</h2>
        <small class="muted">Login to continue to your dashboard</small>
        <label>Email</label
        ><asp:TextBox
          ID="txtEmail"
          runat="server"
          TextMode="Email"
          placeholder="Enter your email"
        ></asp:TextBox>
        <label>Password</label
        ><asp:TextBox
          ID="txtPassword"
          runat="server"
          TextMode="Password"
          placeholder="Enter password"
        ></asp:TextBox>
        <div class="row">
          <label class="inl"><input type="checkbox" /> Remember me</label
          ><a runat="server" href="~/ResetPassword.aspx">Forgot Password?</a>
        </div>
        <asp:Label ID="lblMsg" runat="server" CssClass="msg"></asp:Label>
        <asp:Button
          ID="btnLogin"
          runat="server"
          Text="Login"
          CssClass="btn"
          OnClick="btnLogin_Click"
        />
        <p class="c">
          Don't have an account?
          <a runat="server" href="~/Register.aspx">Sign up</a>
        </p>
      </div>
    </div>
  </section>
</asp:Content>
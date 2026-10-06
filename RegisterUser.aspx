<%@ Page Title="Register" Language="C#" MasterPageFile="~/Auth.Master"
AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs"
Inherits="StayBuddy.Register" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
  <section class="split rev">
    <div class="formside">
      <div class="fbox">
        <h2>Create Account</h2>
        <small class="muted"
          >Let's get you started on finding the best accommodation</small
        >
        <label>Full Name</label
        ><asp:TextBox
          ID="txtName"
          runat="server"
          placeholder="Enter your name"
        ></asp:TextBox>
        <label>Email</label
        ><asp:TextBox
          ID="txtEmail"
          runat="server"
          TextMode="Email"
          placeholder="Enter your email"
        ></asp:TextBox>
        <label>Mobile No</label
        ><asp:TextBox
          ID="txtMobile"
          runat="server"
          placeholder="Enter your number"
        ></asp:TextBox>
        <label>Password</label
        ><asp:TextBox
          ID="txtPassword"
          runat="server"
          TextMode="Password"
          placeholder="Enter your password"
        ></asp:TextBox>
        <label>Confirm Password</label
        ><asp:TextBox
          ID="txtConfirm"
          runat="server"
          TextMode="Password"
          placeholder="Confirm your password"
        ></asp:TextBox>
        <asp:Label ID="lblMsg" runat="server" CssClass="msg"></asp:Label>
        <asp:Button
          ID="btnRegister"
          runat="server"
          Text="Register"
          CssClass="btn"
          OnClick="btnRegister_Click"
        />
        <p class="c">
          Already have an account?
          <a runat="server" href="~/Login.aspx">Login</a>
        </p>
      </div>
    </div>
    <div class="side">
      <h1>Join StayBuddy!</h1>
      <p>
        Create your account today and become a part of finding happy-free stays
        as per your need at one place.
      </p>
    </div>
  </section>
</asp:Content>
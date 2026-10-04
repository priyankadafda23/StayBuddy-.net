<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="StayBuddy_.net.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Create Account</p>
    <p>
        Let&#39;s get you started on finding the best accomodation</p>
    <p>
        Full Name</p>
    <p>
        <asp:TextBox ID="name" placeholder="Enter your full name" runat="server"></asp:TextBox>
    </p>
    <p>
        Email</p>
    <p>
        <asp:TextBox ID="email" placeholder="Enter your email" runat="server"></asp:TextBox>
    </p>
    <p>
        Mobile No.</p>
    <p>
        <asp:TextBox ID="contact" placeholder="Enter your number" runat="server"></asp:TextBox>
    </p>
    <p>
        Password</p>
    <p>
        <asp:TextBox ID="password" placeholder="Enter your password" runat="server"></asp:TextBox>
    </p>
    <p>
        Confirm Password</p>
    <p>
        <asp:TextBox ID="confirmPassword" placeholder="Confirm your password" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="register" runat="server" Text="Register" OnClick="register_Click" />
    </p>
    <p>
        Already have an account? <asp:LinkButton ID="loginLink" runat="server" OnClick="loginLink_Click1">Login</asp:LinkButton>
    </p>
</asp:Content>

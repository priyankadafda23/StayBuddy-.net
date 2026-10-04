<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="StayBuddy_.net.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Welcome&nbsp; Back</p>
    <p>
        Login to continue</p>
    <p>
        Email</p>
    <p>
        <asp:TextBox ID="emailLogin" placeholder="Enter your email" runat="server"></asp:TextBox>
    </p>
    <p>
        Password</p>
    <p>
        <asp:TextBox ID="passwordLogin" placeholder="Enter your password" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:CheckBox ID="rememberMe" runat="server" Text="Remember me" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="forgotPassword" runat="server" OnClick="forgotPassword_Click">Forgot Password?</asp:LinkButton>
    </p>

    <p>
        Don&#39;t have an account?
        <asp:LinkButton ID="signUp" runat="server" OnClick="signUp_Click">Sign Up</asp:LinkButton>
    </p>
</asp:Content>

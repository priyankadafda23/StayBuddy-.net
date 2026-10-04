<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="StayBuddy_.net.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Create Account</p>
    <p>
        Let&#39;s get you started</p>
    <p>
        Full Name</p>
    <p>
        <asp:TextBox ID="name" runat="server">Enter full name</asp:TextBox>
        <asp:RequiredFieldValidator ID="nameRequired" runat="server" ControlToValidate="name" ErrorMessage="Name must be entered"></asp:RequiredFieldValidator>
    </p>
    <p>
        Email</p>
    <p>
        <asp:TextBox ID="email" runat="server">Enter email</asp:TextBox>
        <asp:RegularExpressionValidator ID="validEmail" runat="server" ControlToValidate="email" ErrorMessage="Enter valid email"></asp:RegularExpressionValidator>
    </p>
    <p>
        Mobile No.</p>
    <p>
        <asp:TextBox ID="contact" runat="server">Enter your number</asp:TextBox>
        <asp:RangeValidator ID="validContact" runat="server" ControlToValidate="contact" ErrorMessage="Enter valid contact no."></asp:RangeValidator>
    </p>
    <p>
        Password</p>
    <p>
        <asp:TextBox ID="password" runat="server" OnTextChanged="TextBox4_TextChanged">Enter full password</asp:TextBox>
    </p>
    <p>
        Confirm Password</p>
    <p>
        <asp:TextBox ID="confirmPassword" runat="server">Enter full confirm password</asp:TextBox>
        <asp:CompareValidator ID="confirmPasswordValid" runat="server" ControlToCompare="password" ControlToValidate="confirmPassword" ErrorMessage="Password does not match"></asp:CompareValidator>
    </p>
    <p>
        <asp:Button ID="register" runat="server" Text="Register" />
    </p>
    <p>
        Already have an account? <asp:LinkButton ID="loginLink" runat="server">Login</asp:LinkButton>
    </p>
</asp:Content>

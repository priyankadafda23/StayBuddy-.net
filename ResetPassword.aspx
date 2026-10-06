<%@ Page Title="Reset Password" Language="C#" MasterPageFile="~/Auth.Master"
AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs"
Inherits="StayBuddy.ResetPassword" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
  <section class="center">
    <div class="fbox white">
      <div class="ic">&#9794;</div>
      <h2 class="c">Create New Password</h2>
      <small class="muted c">Reset your password</small>
      <label>Current Password</label
      ><asp:TextBox
        ID="txtCurrent"
        runat="server"
        TextMode="Password"
        placeholder="Enter your current password"
      ></asp:TextBox>
      <label>New Password</label
      ><asp:TextBox
        ID="txtNew"
        runat="server"
        TextMode="Password"
        placeholder="Enter your new password"
      ></asp:TextBox>
      <asp:Label ID="lblMsg" runat="server" CssClass="msg"></asp:Label>
      <asp:Button
        ID="btnReset"
        runat="server"
        Text="Reset Password"
        CssClass="btn"
        OnClick="btnReset_Click"
      />
      <p class="c">
        <asp:HyperLink ID="lnkBack" runat="server" NavigateUrl="~/Login.aspx">
            Back to Login</asp:HyperLink>
      </p>
    </div>
  </section>
</asp:Content>
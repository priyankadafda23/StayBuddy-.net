<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Admin/AdminProfile.Master" AutoEventWireup="true" CodeBehind="AdminEditProfile.aspx.cs" Inherits="StayBuddy.Admin.AdminEditProfile" %>

<asp:Content ContentPlaceHolderID="PanelContent" runat="server">

    <h3 class="ph">
        <a href="AdminProfile.aspx">&larr;</a>
        Edit your Profile
    </h3>

    <div class="c cam">
        📷
        <br />
        <small class="muted">Click to change profile pic<br />JPG, PNG</small>
    </div>

    <label>Full Name</label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

    <label>Email</label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

    <label>Mobile No.</label>
    <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>

    <asp:Label ID="lblMsg" runat="server" CssClass="msg ok"></asp:Label>

    <asp:Button
        ID="btnSave"
        runat="server"
        Text="Save Changes"
        CssClass="btn-or"
        OnClick="btnSave_Click" />

</asp:Content>

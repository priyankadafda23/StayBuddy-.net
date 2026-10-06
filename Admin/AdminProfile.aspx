<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Admin/AdminProfile.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="StayBuddy.Admin.AdminProfile" %>

<asp:Content ContentPlaceHolderID="PanelContent" runat="server">

    <h3>Admin Settings &amp; Resources</h3>

    <a runat="server" class="item" href="~/Admin/AdminEditProfile.aspx">
        <b>Edit Profile</b>
        <small>Change details of your profile</small>
    </a>

    <a runat="server" class="item" href="~/Admin/AdminAbout.aspx">
        <b>About StayBuddy</b>
        <small>View mission, goals and platform terms of registration</small>
    </a>

    <a runat="server" class="item" href="~/Admin/AdminPrivacy.aspx">
        <b>Privacy Policy</b>
        <small>Student data, interaction guidelines and GDPR checks</small>
    </a>

    <div class="row">
        <asp:LinkButton
            ID="btnLogout"
            runat="server"
            CssClass="btn-or"
            OnClick="btnLogout_Click">
            Log Out
        </asp:LinkButton>

        <small class="muted">StayBuddy App v1.0.0</small>
    </div>

</asp:Content>

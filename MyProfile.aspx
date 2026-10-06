<%@ Page Title="Profile" Language="C#" MasterPageFile="~/ProfileMaster.Master"
AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs"
Inherits="StayBuddy.MyProfile" %>
<asp:Content ContentPlaceHolderID="PanelContent" runat="server">
  <h3>Account Settings &amp; Resources</h3>
  <a runat="server" class="item" href="~/EditProfile.aspx"
    ><b>Edit Profile</b><small>Change details of your profile</small></a
  ><a runat="server" class="item" href="~/MySaved.aspx"
    ><b>My Saved Stays</b><small>View houses/hostels you have saved</small></a
  ><a runat="server" class="item" href="~/About.aspx"
    ><b>About StayBuddy</b><small>Learn about the platform</small></a
  ><a runat="server" class="item" href="~/Faq.aspx"
    ><b>Frequently Asked Questions (FAQ)</b
    ><small>Get support for any questions</small></a
  ><a runat="server" class="item" href="~/Privacy.aspx"
    ><b>Privacy Policy</b><small>Read our privacy policy</small></a
  >
  <div class="row">
    <asp:LinkButton
      ID="btnLogout"
      runat="server"
      CssClass="btn-brown"
      OnClick="btnLogout_Click"
      >Log out</asp:LinkButton
    ><small class="muted">StayBuddy App v1.0.0</small>
  </div>
</asp:Content>
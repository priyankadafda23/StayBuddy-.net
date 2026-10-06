<%@ Page Title="Edit Profile" Language="C#"
MasterPageFile="~/ProfileMaster.Master" AutoEventWireup="true"
CodeBehind="EditProfile.aspx.cs" Inherits="StayBuddy.EditProfile" %>
<asp:Content ContentPlaceHolderID="PanelContent" runat="server">
  <h3 class="ph"><a href="MyProfile.aspx">&larr;</a> Edit your Profile</h3>
  <div class="c cam">
    &#128247;<br /><small class="muted">Click to change profile pic</small>
  </div>
  <label>Full Name</label><asp:TextBox ID="txtName" runat="server"></asp:TextBox
  ><label>Email</label><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox
  ><label>Mobile No.</label
  ><asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
  <asp:Label ID="lblMsg" runat="server" CssClass="msg ok"></asp:Label
  ><asp:Button
    ID="btnSave"
    runat="server"
    Text="Save Changes"
    CssClass="btn dark"
    OnClick="btnSave_Click"
  />
</asp:Content>
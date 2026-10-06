<%@ Page Title="Your Saved Stays" Language="C#"
MasterPageFile="~/ProfileMaster.Master" AutoEventWireup="true"
CodeBehind="MySaved.aspx.cs" Inherits="StayBuddy.MySaved" %>
<asp:Content ContentPlaceHolderID="PanelContent" runat="server">
  <h3 class="ph"><a href="MyProfile.aspx">&larr;</a> Your Saved Stays</h3>
  <div class="grid2">
    <asp:Repeater ID="rptStays" runat="server"
      ><ItemTemplate
        ><%#
        StayBuddy.Models.Store.Card((StayBuddy.Models.Stay)Container.DataItem)
        %></ItemTemplate
      ></asp:Repeater
    >
  </div>
</asp:Content>
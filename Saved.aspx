<%@ Page Title="Saved Stays" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true" CodeBehind="Saved.aspx.cs" Inherits="StayBuddy.Saved" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
  <section class="wrap">
    <h2>Saved Accommodations</h2>
    <small class="muted">View and Compare your favorite stays</small>
    <div class="grid3" style="margin-top: 16px">
      <asp:Repeater ID="rptStays" runat="server"
        ><ItemTemplate
          ><%#
          StayBuddy.Models.Store.Card((StayBuddy.Models.Stay)Container.DataItem)
          %></ItemTemplate
        ></asp:Repeater
      >
    </div>
  </section>
</asp:Content>
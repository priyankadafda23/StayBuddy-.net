<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StayBuddy.Default" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
<section class="hero">
    <h1>Find Your Perfect Home<br />Away From Home</h1>
    <p>PGs, Hostels, and Rooms that are suited for students and working professionals. Simple, fast, and trustworthy.</p>
</section>
<section class="wrap">
    <h4>Browse by Category</h4>
    <div class="cats">
        <a class="<%= Cls("PG") %>" href="<%= ResolveUrl("~/Default.aspx?category=PG") %>">&#128719; PGs</a>
        <a class="<%= Cls("Hostel") %>" href="<%= ResolveUrl("~/Default.aspx?category=Hostel") %>">&#127968; Hostels</a>
        <a class="<%= Cls("Room") %>" href="<%= ResolveUrl("~/Default.aspx?category=Room") %>">&#128682; Rooms</a>
    </div>
<h4>Recommended Stays for You</h4>
<div class="grid3">
    <asp:Repeater ID="rptStays" runat="server">
        <ItemTemplate><%# StayBuddy.Models.Store.Card((StayBuddy.Models.Stay)Container.DataItem) %></ItemTemplate>
    </asp:Repeater>
</div>
</section>
</asp:Content>
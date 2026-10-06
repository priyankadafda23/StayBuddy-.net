<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="StayBuddy.Admin.Dashboard" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <div class="stat">
        <small>TOTAL REGISTERED USERS</small>
        <h2><asp:Literal ID="litUsers" runat="server"></asp:Literal></h2>
    </div>

    <div class="stat">
        <small>ACTIVE STAYS LISTED</small>
        <h2><asp:Literal ID="litStays" runat="server"></asp:Literal></h2>
    </div>

</asp:Content>

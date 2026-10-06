<%@ Page Title="Search Stays" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="StayBuddy.Search"
%>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
  <section class="wrap sr">
    <div class="filters">
      <div class="fh">
        <b>Filters</b><a runat="server" href="~/Search.aspx">Clear All</a>
      </div>
      <label>Location / Area</label
      ><asp:TextBox
        ID="txtLocation"
        runat="server"
        placeholder="Rajkot, Gujarat"
      ></asp:TextBox>
      <label>Price Range (Monthly, up to)</label
      ><asp:TextBox
        ID="txtPrice"
        runat="server"
        TextMode="Range"
        min="1000"
        max="15000"
        step="500"
        Text="15000"
      ></asp:TextBox>
      <label>Room Type</label
      ><asp:CheckBoxList ID="chkTypes" runat="server" RepeatLayout="Flow" CssClass="filter-list"
        ><asp:ListItem Value="Co-living">Co-Living</asp:ListItem
        ><asp:ListItem Value="Single">Single Bed</asp:ListItem
        ><asp:ListItem Value="Double">Double Sharing</asp:ListItem
        ><asp:ListItem Value="AC">AC Room</asp:ListItem></asp:CheckBoxList
      >
      <label>Meals Included</label
      ><asp:RadioButtonList ID="rblMeals" runat="server" RepeatLayout="Flow" CssClass="filter-list"
        ><asp:ListItem Value="" Selected="True">Any</asp:ListItem
        ><asp:ListItem Value="3 times">Yes, 3 times daily</asp:ListItem
        ><asp:ListItem Value="2 times">2 meals daily</asp:ListItem
        ><asp:ListItem Value="No meals"
          >No meals</asp:ListItem
        ></asp:RadioButtonList
      >
      <asp:Button
        ID="btnApply"
        runat="server"
        Text="Apply"
        CssClass="btn sm"
        OnClick="btnApply_Click"
      />
    </div>
    <div>
      <div class="found">
        <asp:Literal ID="litCount" runat="server"></asp:Literal> stays found
      </div>
      <div class="grid2">
        <asp:Repeater ID="rptStays" runat="server"
          ><ItemTemplate
            ><%#
            StayBuddy.Models.Store.Card((StayBuddy.Models.Stay)Container.DataItem)
            %></ItemTemplate
          ></asp:Repeater
        >
      </div>
    </div>
  </section>
</asp:Content>
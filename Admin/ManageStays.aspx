<%@ Page Title="Manage Stay List" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageStays.aspx.cs" Inherits="StayBuddy.Admin.ManageStays" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <div class="tools">
        <asp:TextBox
            ID="txtFilter"
            runat="server"
            placeholder="Filter by hostel name...">
        </asp:TextBox>

        <asp:DropDownList
            ID="ddlCategory"
            runat="server"
            AutoPostBack="true"
            OnSelectedIndexChanged="Filter_Changed">
            <asp:ListItem Value="">All Categories</asp:ListItem>
            <asp:ListItem>PG</asp:ListItem>
            <asp:ListItem>Hostel</asp:ListItem>
            <asp:ListItem>Room</asp:ListItem>
        </asp:DropDownList>

        <asp:Button
            ID="btnFilter"
            runat="server"
            Text="Filter"
            CssClass="btn-or"
            OnClick="Filter_Changed" />

        <a
            runat="server"
            class="btn-or"
            href="~/Admin/AddStay.aspx">
            + Add New Stay
        </a>
    </div>

    <div class="table-wrap">
        <asp:Repeater ID="rptStays" runat="server" OnItemCommand="rptStays_ItemCommand">

            <HeaderTemplate>
                <table class="tbl">
                    <tr>
                        <th>THUMBNAIL</th>
                        <th>PROPERTY</th>
                        <th>ADDRESS &amp; CONTACT</th>
                        <th>OCCUPANCY</th>
                        <th>ROOMS &amp; MEALS</th>
                        <th>PRICE</th>
                        <th>ACTIONS</th>
                    </tr>
            </HeaderTemplate>

            <ItemTemplate>
                <tr>
                    <td>
                        <div
                            class="th"
                            style="background-image:url('<%# ResolveUrl((string)Eval("Image")) %>')">
                        </div>
                    </td>

                    <td>
                        <b><%# HttpUtility.HtmlEncode((string)Eval("Name")) %></b><br />
                        <small class="acc"><%# Eval("Gender") %></small>
                    </td>

                    <td>
                        <%# HttpUtility.HtmlEncode((string)Eval("Address")) %><br />
                        <%# Eval("Contact") %>
                    </td>

                    <td><%# Eval("Occupancy") %></td>

                    <td>
                        <%# Eval("Rooms") %><br />
                        <%# Eval("Meals") %>
                    </td>

                    <td>
                        <b>&#8377;<%# ((int)Eval("Price")).ToString("N0") %>/mo</b>
                    </td>

                    <td>
                        <asp:LinkButton
                            runat="server"
                            CssClass="del"
                            CommandName="del"
                            CommandArgument='<%# Eval("Id") %>'
                            OnClientClick="return confirm('Delete this stay?');">
                            🗑
                        </asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>

            <FooterTemplate>
                </table>
            </FooterTemplate>

        </asp:Repeater>
    </div>

</asp:Content>

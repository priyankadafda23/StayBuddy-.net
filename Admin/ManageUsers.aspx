<%@ Page Title="Users" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="StayBuddy.Admin.ManageUsers" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <div class="tools">
        <asp:TextBox
            ID="txtSearch"
            runat="server"
            placeholder="Search registered students by name, email...">
        </asp:TextBox>

        <asp:Button
            ID="btnSearch"
            runat="server"
            Text="Search"
            CssClass="btn-or"
            OnClick="btnSearch_Click" />
    </div>

    <div class="table-wrap">
        <asp:Repeater ID="rptUsers" runat="server" OnItemCommand="rptUsers_ItemCommand">

            <HeaderTemplate>
                <table class="tbl">
                    <tr>
                        <th>NAME</th>
                        <th>EMAIL ADDRESS</th>
                        <th>CONTACT NUMBER</th>
                        <th>ACTIONS</th>
                    </tr>
            </HeaderTemplate>

            <ItemTemplate>
                <tr>
                    <td>
                        <span class="avatar s">👨‍💼</span>
                        <b><%# HttpUtility.HtmlEncode((string)Eval("Name")) %></b>
                    </td>

                    <td>
                        <%# HttpUtility.HtmlEncode((string)Eval("Email")) %>
                    </td>

                    <td>
                        <%# Eval("Mobile") %>
                    </td>

                    <td>
                        <asp:LinkButton
                            runat="server"
                            CssClass="del"
                            CommandName="del"
                            CommandArgument='<%# Eval("Email") %>'
                            OnClientClick="return confirm('Delete this user?');">
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

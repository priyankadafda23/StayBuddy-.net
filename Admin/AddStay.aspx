<%@ Page Title="Add Stay Details" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddStay.aspx.cs" Inherits="StayBuddy.Admin.AddStay" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <div class="two">

        <div class="panel">
            <h4>New Stay Information</h4>

            <div class="g2">
                <div>
                    <label>STAY NAME</label>
                    <asp:TextBox ID="txtName" runat="server" placeholder="e.g. Balaji Boys Hostel"></asp:TextBox>
                </div>

                <div>
                    <label>CONTACT NUMBER</label>
                    <asp:TextBox ID="txtContact" runat="server" placeholder="+91 99000 00000"></asp:TextBox>
                </div>
            </div>

            <label>COMPLETE STREET ADDRESS</label>
            <asp:TextBox ID="txtAddress" runat="server" placeholder="Street No., Area, Landmark, Rajkot, Gujarat 360002"></asp:TextBox>

            <div class="g2">
                <div>
                    <label>ROOM OPTIONS</label>
                    <asp:DropDownList ID="ddlRooms" runat="server">
                        <asp:ListItem>Both AC and Non-AC</asp:ListItem>
                        <asp:ListItem>AC only</asp:ListItem>
                        <asp:ListItem>Non-AC only</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div>
                    <label>MAX OCCUPANCY TYPE</label>
                    <asp:TextBox ID="txtOccupancy" runat="server" placeholder="Single, Double, Triple sharing"></asp:TextBox>
                </div>
            </div>

            <div class="g2">
                <div>
                    <label>MONTHLY PRICE (&#8377; INR)</label>
                    <asp:TextBox ID="txtPrice" runat="server" TextMode="Number" placeholder="6000"></asp:TextBox>
                </div>

                <div>
                    <label>ACCOMMODATION TYPE</label>
                    <asp:RadioButtonList
                        ID="rblGender"
                        runat="server"
                        RepeatLayout="Flow"
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="Male Only" Selected="True">Male Only</asp:ListItem>
                        <asp:ListItem Value="Female Only">Female Only</asp:ListItem>
                        <asp:ListItem Value="Co-living">Co-living</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>

            <asp:Label ID="lblMsg" runat="server" CssClass="msg"></asp:Label>

            <asp:Button
                ID="btnPublish"
                runat="server"
                Text="Confirm &amp; Publish Stay"
                CssClass="btn-or wide"
                OnClick="btnPublish_Click" />
        </div>

        <div class="panel">
            <h4>Property Images</h4>

            <div class="drop">
                📍
                <br />
                <strong>Click to upload thumbnail</strong>
                <small>JPG, PNG formats up to 5 MB</small>
                <asp:FileUpload ID="fileThumb" runat="server" />
            </div>

            <label>MEALS PLAN</label>

            <asp:RadioButtonList
                ID="rblMeals"
                runat="server"
                RepeatLayout="Flow">
                <asp:ListItem Value="Meals included 3 times a day" Selected="True">3 Times Meals Included in Rent</asp:ListItem>
                <asp:ListItem Value="Meals included 2 times a day">2 Times Meals Included in Rent</asp:ListItem>
                <asp:ListItem Value="Meals included 1 time a day">1 Time Meal Included in Rent</asp:ListItem>
                <asp:ListItem Value="No meals">No Meal Included in Rent</asp:ListItem>
            </asp:RadioButtonList>
        </div>

    </div>

</asp:Content>

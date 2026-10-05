<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="UserForgotPassword.aspx.cs" Inherits="StayBuddy_.net.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <section class="forgot-page">

        <div class="forgot-card">

            <div class="key-icon">

                <svg viewBox="0 0 24 24">
                    <circle cx="8" cy="15" r="4"></circle>
                    <path d="M11 12L21 2"></path>
                    <path d="M18 5L21 8"></path>
                    <path d="M15 8L18 11"></path>
                </svg>

            </div>

            <h1>Create New Password</h1>

            <p class="forgot-subtitle">
                Reset your password
            </p>


            <div class="forgot-form">

                <div class="forgot-form-group">

                    <label>
                        Current Password
                    </label>

                    <asp:TextBox
                        ID="CurrentPassword"
                        runat="server"
                        CssClass="forgot-input"
                        TextMode="Password"
                        placeholder="Enter your current password">
                    </asp:TextBox>

                </div>


                <div class="forgot-form-group">

                    <label>
                        New Password
                    </label>

                    <asp:TextBox
                        ID="NewPassword"
                        runat="server"
                        CssClass="forgot-input"
                        TextMode="Password"
                        placeholder="Enter your new password">
                    </asp:TextBox>

                </div>


                <asp:Button
                    ID="Button1"
                    runat="server"
                    Text="Reset Password"
                    CssClass="reset-button"
                    OnClick="btnResetPassword_Click" />


                <asp:HyperLink
                    ID="HyperLink1"
                    runat="server"
                    NavigateUrl="~/Login.aspx"
                    CssClass="back-login">

                    Back to Login

                </asp:HyperLink>

            </div>

        </div>

    </section>

</asp:Content>
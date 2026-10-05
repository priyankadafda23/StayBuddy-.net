<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="StayBuddy_.net.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <section class="register-section">

        <!-- ================= LEFT SIDE ================= -->

        <div class="register-form-container">
            <div class="register-form">
                <h1>Create Account</h1>
                <p class="subtitle">
                    Let’s get you started on finding the best accommodation
                </p>

                <div class="form-group">
                    <label>Full Name</label>
                    <asp:TextBox
                        ID="txtFullName"
                        runat="server"
                        CssClass="form-input"
                        placeholder="Enter your full name"> </asp:TextBox>
                </div>


                <div class="form-group">
                    <label>Email</label>
                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="form-input"
                        TextMode="Email"
                        placeholder="Enter your email"> </asp:TextBox>
                </div>


                <div class="form-group">
                    <label>Mobile No.</label>
                    <asp:TextBox
                        ID="txtMobile"
                        runat="server"
                        CssClass="form-input"
                        TextMode="Phone"
                        placeholder="Enter your number"> </asp:TextBox>
                </div>


                <div class="form-group">
                    <label>Password</label>
                    <asp:TextBox
                        ID="txtPassword"
                        runat="server"
                        CssClass="form-input"
                        TextMode="Password"
                        placeholder="Enter your password"> </asp:TextBox>
                </div>


                <div class="form-group">
                    <label>Confirm Password</label>
                    <asp:TextBox
                        ID="txtConfirmPassword"
                        runat="server"
                        CssClass="form-input"
                        TextMode="Password"
                        placeholder="Confirm your password"> </asp:TextBox>
                </div>


                <asp:Button
                    ID="btnRegister"
                    runat="server"
                    Text="Register"
                    CssClass="register-button"
                    OnClick="btnRegister_Click" />


                <div class="login-text">
                    Already have an account?
                    <a href="Login.aspx">
                        Login
                    </a>
                </div>
            </div>
        </div>


        <!-- ================= RIGHT SIDE ================= -->

        <div class="register-info">
            <div class="info-content">
                <h2>Join StayBuddy!</h2>
                <p>
                    Create your account today and become a user to find
                    hassle-free stays as per your need at one place.
                </p>
            </div>
        </div>
    </section>
</asp:Content>
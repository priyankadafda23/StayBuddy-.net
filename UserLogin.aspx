<%@ Page Title="Login - StayBuddy"
    Language="C#"
    MasterPageFile="~/Users.Master"
    AutoEventWireup="true"
    CodeBehind="UserLogin.aspx.cs"
    Inherits="StayBuddy_.net.WebForm2" %>


<asp:Content ID="Content3"
    ContentPlaceHolderID="head"
    runat="server">
</asp:Content>


<asp:Content ID="Content4"
    ContentPlaceHolderID="MainContent"
    runat="server">


    <section class="login-section">


        <!-- =====================================
             LEFT SIDE - INFORMATION
        ====================================== -->

        <div class="login-info">

            <div class="login-info-content">

                <h2>
                    Discover stays near your workplace
                    <br />
                    or college
                </h2>

                <p>
                    Login to your account and continue to find
                    hassle-free stays at one place.
                </p>

            </div>

        </div>


        <!-- =====================================
             RIGHT SIDE - LOGIN FORM
        ====================================== -->

        <div class="login-form-container">

            <div class="login-form">


                <!-- Heading -->

                <h1>
                    Welcome Back
                </h1>


                <p class="login-subtitle">
                    Login to continue to your dashboard
                </p>


                <!-- Email -->

                <div class="login-form-group">

                    <label>
                        Email
                    </label>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="login-input"
                        TextMode="Email"
                        placeholder="Enter your email">
                    </asp:TextBox>

                </div>


                <!-- Password -->

                <div class="login-form-group">

                    <label>
                        Password
                    </label>

                    <asp:TextBox
                        ID="txtPassword"
                        runat="server"
                        CssClass="login-input"
                        TextMode="Password"
                        placeholder="Enter password">
                    </asp:TextBox>

                    <span
                        class="password-eye"
                        onclick="togglePassword()">
                        👁
                    </span>

                </div>


                <!-- Remember + Forgot -->

                <div class="login-options">


                    <div class="remember-container">

                        <asp:CheckBox
                            ID="chkRemember"
                            runat="server"
                            CssClass="remember-checkbox" />

                        <span>
                            Remember me
                        </span>

                    </div>


                    <a
                        href="ForgotPassword.aspx"
                        class="forgot-link">

                        Forgot Password?

                    </a>


                </div>




                <!-- Login Button -->

                <asp:Button
                    ID="btnLogin"
                    runat="server"
                    Text="Login"
                    CssClass="login-button"
                    OnClick="btnLogin_Click" />


                <!-- Sign Up -->

                <div class="signup-text">

                    Don't have an account?

                    <a
                        href="RegisterUser.aspx"
                        class="signup-link">

                        Sign up

                    </a>

                </div>


            </div>

        </div>


    </section>


</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DoAn.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            
            font-family: Arial, sans-serif;
        }
        
        .login-container {
            background-color: #f1f1f1;
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-left:400px
        }
        
        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        
        .login-container .form-group {
            margin-bottom: 15px;
        }
        
        .login-container label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #cccccc;
            border-radius: 3px;
        }
        
        .login-container input[type="submit"] {
            width: 100%;
            padding: 8px;
            background-color: #4CAF50;
            color: #ffffff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        
        .login-container input[type="submit"]:hover {
            background-color: #45a049;
           
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-container">
        <h2>Login</h2>
        <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" CssClass="form-group" LoginButtonText="Login" TitleText="">
            <LoginButtonStyle Font-Bold="True" />
        </asp:Login>
    </div>
</asp:Content>

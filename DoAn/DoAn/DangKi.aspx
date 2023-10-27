<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="DoAn.DangKi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
    .container {
        max-width: 400px;
        margin: 40px 400px;
        padding: 40px 10px;
        background-color: #ffffff;
        border: 1px solid #cccccc;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        
    }

    h2 {
        color: #333;
        font-size: 24px;
        margin-bottom: 20px;
        margin-left:150px
    }

    table {
        width: 100%;
    }

    table tr {
        margin-bottom: 20px;
    }

    table td:first-child {
        text-align: left;
        padding-right: 10px;
        font-weight: bold;
    }

    .input-text {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .input-text:focus {
        outline: none;
        border-color: #4CAF50;
    }

    .button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        margin-left:150px;
    }

    .button:hover {
        background-color: #45a049;
    }

    .error-message {
        color: red;
        margin-top: 10px;
    }
</style>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Đăng Kí</h2>
        <table>
            <tr>
                <td>Tài khoản:</td>
                <td><asp:TextBox ID="txt_DangNhap" runat="server" CssClass="input-text"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Mật khẩu:</td>
                <td><asp:TextBox ID="txt_MK" runat="server" TextMode="Password" CssClass="input-text"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Nhập lại mật khẩu:</td>
                <td><asp:TextBox ID="txt_NLMK" runat="server" TextMode="Password" CssClass="input-text"></asp:TextBox></td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="Mật khẩu không trùng" ControlToValidate="txt_NLMK"
                        ControlToCompare="txt_MK" Operator="Equal" Display="Dynamic"></asp:CompareValidator>
                </td>
            </tr>
        </table>
        <div>
            <asp:Button ID="btn_DangKi" runat="server" Text="Đăng Kí" OnClick="btn_DangKi_Click" CssClass="button" />
        </div>
        <asp:Label ID="lbTB" runat="server" Text="" CssClass="error-message"></asp:Label>
    </div>
</asp:Content>

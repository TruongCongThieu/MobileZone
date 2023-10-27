<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="DoAn.TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 105px;
        }

        .auto-style13 {
            height: 255px;
            width: 1338px;
        }

        .auto-style15 {
            width: 484px;
        }

        .auto-style16 {
            margin-left: 163px;
        }

        .auto-style17 {
            width: 124px;
        }
        .auto-style18 {
            margin-left: 40px;
        }
        .sizesp{
            width: 160px;
        }
    .auto-style19 {
        height: 255px;
        width: 1337px;
    }
    .gia{
        text-decoration:none;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>

            <td>
                <asp:DataList ID="dl_sanpham" runat="server" Width="712px" RepeatColumns="7"  GridLines="Vertical" BorderStyle="None" Font-Bold="True"   Font-Size="Medium" >
                    <ItemStyle BorderColor="#CCCCCC" BorderWidth="10px" />
                    <ItemTemplate  >
                        <asp:ImageButton ID="ImageButton3" runat="server" CssClass="sizesp" ImageUrl='<%# "images/"+Eval("Hinh") %>' OnClick="ImageButton3_Click" CommandArgument='<%# Eval("MaHang") %>' />
                        <br />
                        <asp:LinkButton ID="lbt_tendt" runat="server" EnableTheming="True" Font-Underline="False" ForeColor="Black" OnClick="lbt_tendt_Click" Text='<%# Eval("TenHang") %>' CommandArgument='<%# Eval("MaHang") %>'></asp:LinkButton>
                        <br />
                        <asp:LinkButton ID="ltb_gia" runat="server" EnableTheming="True" ForeColor="red" 
                            Text='<%# Bind("DonGia", "{0:N0}") %>'
                            CommandArgument='<%# Eval("MaHang") %>'
                            OnClick="ltb_gia_Click"
                            class="gia" >
                            
                        </asp:LinkButton>

                    </ItemTemplate>
                </asp:DataList>
              
                <asp:Label ID="lbTB" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin-top: 10px">
        <img src="images/banner.jpg" class="auto-style19" />
    </div>
    
</asp:Content>

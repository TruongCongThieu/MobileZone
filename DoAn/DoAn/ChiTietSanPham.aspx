<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="DoAn.ChiTietSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .chitietsp img {
            margin-left:50px;
            width: 150px;
            margin-right:1PX;
        }
        .chitietsp{
           
             background: linear-gradient(to right, #dd5e89,#f7bb97);
        }
        .chitietsp tr td{
            width:300px;
           
        }
        .container {
            margin-top: 30px;
        }

        .contentsp {
            border: 2px solid #CCCCCC;
            border-radius: 10px;
          
        }

        .khuyenmai {
            width: 100%;
            background-color: #dd5e89;
            color: #fff;
            padding: 10px;
            text-align: center;
            font-size: larger;
            margin-bottom: 10px;
        }

            .khuyenmai img {
                width: 30px;
                margin-right: 5px;
                vertical-align: middle;
            }

        .datalistkhuyenmai {
            margin-top: 10px;
            list-style: none;
            padding: 0;
            display: flex;
            justify-content: center;
        }

        .dtmua {
            margin-top: 10px;
            display: flex;
            align-items: center;
        }

            .dtmua input[type="text"] {
                width: 80px;
                padding: 5px;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

            .dtmua input[type="submit"] {
                padding: 8px 20px;
                background-color: #dd5e89;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

        .dongia {
            color: red;
            font-size:30px;
        }
        .tensp{
            font-weight:bold;
            color:black;
            font-size:20px;
            text-align:center;

        }
        .mota {
           color:white;
        }
    </style>
    <div class="container">
      
        <table style="width: 100%">
            <tr>
                <td style="width: 50%" class="contentsp">
                    <asp:DataList ID="dl_ChiTiet" runat="server" BackColor="White">
                        <ItemStyle BackColor="White" />
                        <ItemTemplate>
                            <table style="width: 100%;" class="chitietsp">
                                <tr>
                                    <td class="tensp">
                                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHang") %>'></asp:Label>
                                        </td>
                                </tr>
                                <tr>
                                   
                                    <td rowspan="3">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "images/"+Eval("Hinh") %>' />
                                    </td>
                                   
                                       
                                </tr>
                                <tr>
                                    <td class="mota">
                                        <div style="font-weight:bold;text-align:center">TÍNH NĂNG NỔI BẬT: </div>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="dongia">
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("DonGia", "{0:N0}") %>'></asp:Label>
                                    </td>
                                    <asp:Label ID="lbTB" runat="server" Text=""></asp:Label>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>


                </td>

                <td style="width: 50%">
                    <span class="khuyenmai">
                        <img src="images/icon/gift.png" />Khuyến Mãi
                       <br />

                    </span>
                    <asp:DataList ID="dl_KhuyenMai" runat="server" CssClass="datalistkhuyenmai">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("KhuyenMai") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:DataList ID="dl_Mua" runat="server" CssClass="dtmua">
                        <ItemTemplate>
                            Số lượng:
                            <asp:TextBox ID="txt_SoLuong" runat="server"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Không nhập số lượng âm"
                                ControlToValidate="txt_SoLuong" Display="Dynamic" MinimumValue="1" MaximumValue="100"
                                Type="Integer">(1&lt;số lượng &lt;100)</asp:RangeValidator>
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Mua" CommandArgument='<%# Eval("MAHANG") %>' OnClick="Button1_Click" />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:Label ID="lbTB" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

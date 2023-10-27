<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="tintuc.aspx.cs" Inherits="DoAn.tintuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .title {
            font-size:30px;
            text-decoration:none;
            color:black;
            font-weight:bold;
        }
    </style>
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/tintuc1.png" Width="152px" Height="94px" PostBackUrl="https://www.thegioididong.com/tin-tuc/xuat-hien-anh-render-cua-asus-zenfone-10-truoc-ngay-ra-mat-1534764" />
            </td>
            <td class="title">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="title" PostBackUrl="https://www.thegioididong.com/tin-tuc/xuat-hien-anh-render-cua-asus-zenfone-10-truoc-ngay-ra-mat-1534764">Xuất hiện ảnh rõ nét của ASUS Zenfone 10 trước thềm ra mắt: Độc đáo và đầy cuốn hút
                </asp:LinkButton>
            </td>
           
        </tr>
        <tr>
              <td>
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/tintuc2.png" Width="152px" Height="94px" PostBackUrl="https://www.thegioididong.com/tin-tuc/smartphone-gaming-gia-re-qua-dinh-1534690" />
            </td>
            <td class="title">
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="title" PostBackUrl="https://www.thegioididong.com/tin-tuc/smartphone-gaming-gia-re-qua-dinh-1534690">Smartphone gaming, giá rẻ quá đỉnh chỉ từ 7.79 triệu
                </asp:LinkButton>
            </td>
           
        </tr>
        <tr>
             <td>
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/tintuc3.png" Width="152px" Height="94px" PostBackUrl="https://www.thegioididong.com/tin-tuc/gaming-phone-nubia-neo-sap-duoc-ra-mat-1534748" />
            </td>
            <td class="title">
                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="title" PostBackUrl="https://www.thegioididong.com/tin-tuc/gaming-phone-nubia-neo-sap-duoc-ra-mat-1534748">Gaming phone giá rẻ Nubia Neo sắp được ra mắt, dự kiến chạy chip Unisoc
                </asp:LinkButton>
            </td>          
        </tr>
         <tr>
             <td>
                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/tintuc4.png" Width="152px" Height="94px" PostBackUrl="https://www.thegioididong.com/tin-tuc/vivo-x90s-xuat-hien-tren-antutu-1534744" />
            </td>
            <td class="title">
                <asp:LinkButton ID="LinkButton4" runat="server" CssClass="title" PostBackUrl="https://www.thegioididong.com/tin-tuc/vivo-x90s-xuat-hien-tren-antutu-1534744">Lộ điểm hiệu năng 'khủng' của flagship Vivo X90s, dự kiến sắp trình làng
                </asp:LinkButton>
            </td>          
        </tr>
         <tr>
             <td>
                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/tintuc5.png" Width="152px" Height="94px" PostBackUrl="https://www.thegioididong.com/tin-tuc/chot-deal-dien-thoai-redmi-dac-biet-chi-co-tai-tgdd-1534559" />
            </td>
            <td class="title">
                <asp:LinkButton ID="LinkButton5" runat="server" CssClass="title" PostBackUrl="https://www.thegioididong.com/tin-tuc/chot-deal-dien-thoai-redmi-dac-biet-chi-co-tai-tgdd-1534559">Chốt deal điện thoại Redmi đặc biệt chỉ có tại TGDĐ, giá rẻ chỉ từ 2.49 triệu
                </asp:LinkButton>
            </td>          
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

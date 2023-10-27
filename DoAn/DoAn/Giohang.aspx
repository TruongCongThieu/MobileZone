<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="DoAn.Giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style type="text/css">
         .giohang img{
             width:160px;
            }
         .tableGiohang {
             margin-left:10px;
         }
         .thanhtoan{
             margin-left:0px;
             display:inline-block;
             margin-bottom:10px;
         }
         .thongbao{
             margin-left:10px;
             color:red;
             width:400px;
         }
         .xoa{
             width:25px;
         }
     </style>
    <table style="width:100%" class="tableGiohang">
        <tr>
            <td style="width:80%" class="giohang">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" >
                    <Columns>
                        <asp:TemplateField HeaderText="Hình ảnh">
                            <ItemTemplate>
                                <asp:Image ID="Image11" runat="server" ImageUrl='<%# "images/"+Eval("Hinh") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="TenHang" HeaderText="Tên Hàng" />
                        <asp:BoundField DataField="DonGia" HeaderText="Đơn Giá" DataFormatString="{0:N0}"   />
                        <asp:TemplateField HeaderText="Số lượng">
                            <ItemTemplate>
                                <asp:TextBox ID="txtsoluong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:TextBox>
                                <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("MaHang") %>'  Text="Cập Nhập" OnClick="Button2_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="KhuyenMai" HeaderText="Khuyến Mãi" />
                        <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền"  DataFormatString="{0:N0}"/>
                        <asp:TemplateField HeaderText="Xóa" >
                            <ItemTemplate >
                                <asp:ImageButton ID="ImageButton3" runat="server" CssClass="xoa" ImageUrl="~/images/icon/xoa.png" CommandArgument='<%# Eval("MaHang") %>' OnClick="ImageButton3_Click1" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <table style="width: 100%;">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                </asp:GridView>
            </td>

            <td class="thanhtoan">
                <div style="margin-bottom:10px"><asp:Button ID="Button1" runat="server" Text="Thanh Toán" OnClick="Button1_Click" />
                </div>
           
                <div  class="thongbao">
                    <asp:Label ID="lbTB" runat="server" Text=""></asp:Label>
                </div>
            </td>
        </tr>
    </table>

</asp:Content>
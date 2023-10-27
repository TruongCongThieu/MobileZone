using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAn
{
    public partial class Giohang : System.Web.UI.Page
    {
        LopDungChung lopchung = new LopDungChung();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string tendangnhap = Session["username"] + "";
            if (tendangnhap == "") return;

            loadDL(tendangnhap);

        }
        protected void loadDL(string tendangnhap)
        {
            string sql = "select MATHANG.MAHANG,TENHANG,KhuyenMai,DONGIA,SOLUONG,DONGIA*SOLUONG AS THANHTIEN,Hinh" +
                " FROM MATHANG,DONHANG WHERE MATHANG.MAHANG=DONHANG.MAHANG  AND TENDANGNHAP ='" + tendangnhap + "'";
            GridView1.DataSource= lopchung.docDuLieu(sql);
            GridView1.DataBind();
        }


      

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            string tendangnhap = Session["username"] + "";
            if (tendangnhap == "") return;

            string mahang = ((ImageButton)sender).CommandArgument;

            string sql = "delete from DONHANG where TENDANGNHAP = '" + tendangnhap + "' and MAHANG = '" + mahang + "'";

            int kq = lopchung.Nonequery(sql);
            if (kq > 0) lbTB.Text = "Xoa thanh cong";
            else lbTB.Text = "Ko thanh cong";
            loadDL(tendangnhap);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tendangnhap = Session["username"] + "";
            if (tendangnhap != "") {

                int total = 0;

            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    // Lấy giá trị từ cột "Thành tiền"
                    TableCell cellThanhTien = row.Cells[5];
                    string thanhTienText = cellThanhTien.Text;

                    // Loại bỏ các ký tự không phải số để chuyển đổi giá trị thành số nguyên
                    thanhTienText = thanhTienText.Replace(",", "").Replace(".", "");

                    // Chuyển đổi giá trị thành số nguyên và cộng vào tổng
                    int thanhTienValue;
                    if (int.TryParse(thanhTienText, out thanhTienValue))
                    {
                        total += thanhTienValue;
                    }
                }
            }

            // Sử dụng tổng (total) của các giá trị trong cột "Thành tiền" ở đây
            lbTB.Text = "Tổng số tiền thanh toán thành công: " + total.ToString("N0");
        }else{
          lbTB.Text = "Bạn phải đăng nhập";
        }
        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            string tendangnhap = Session["username"] + "";
            if (tendangnhap == "") return;
            string mahang = ((Button)sender).CommandArgument;


            Button bt_sua = (Button)sender;
            GridViewRow row = (GridViewRow)bt_sua.Parent.Parent;
            TextBox txtsoluong = (TextBox)row.FindControl("txtsoluong");
            string soluong = txtsoluong.Text;

            string sql = "Update DONHANG set SoLuong = " + soluong + " where TenDangNhap = '" + tendangnhap + "' and MaHang = '" + mahang + "'";
            int kq = lopchung.Nonequery(sql);
            if (kq > 0) lbTB.Text = "Thành Công";
            else lbTB.Text = "không thành công";
            loadDL(tendangnhap);
        }

        protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
        {
            string tendangnhap = Session["username"] + "";
            if (tendangnhap == "") return;
            string mahang = ((ImageButton)sender).CommandArgument;
            string sql = "delete from DONHANG where TenDangNhap='" + tendangnhap + "' and MaHang = '" + mahang + "'";
            int kq = lopchung.Nonequery(sql);
            if (kq > 0) lbTB.Text = "xóa thành công";
            else lbTB.Text = "không thành công";
            loadDL(tendangnhap);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAn
{
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        LopDungChung lopchung = new LopDungChung();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string mahang = Context.Items["id"] + "";
            if (mahang != "")
            {
                string sql = "select * from MATHANG where MaHang ='" + mahang + "'";
                dl_ChiTiet.DataSource = lopchung.docDuLieu(sql);
                dl_ChiTiet.DataBind();

                string sql_KhuyenMai = "select * from MATHANG where MaHang ='" + mahang + "'";
                dl_KhuyenMai.DataSource = lopchung.docDuLieu(sql_KhuyenMai);
                dl_KhuyenMai.DataBind();
            }
            else
            {
                lbTB.Text = "Sản phẩm không tồn tại";
            }

            string sql_motachitiet = "select * from MATHANG where MaHang = '" + mahang + "'";


            dl_Mua.DataSource = lopchung.docDuLieu(sql_motachitiet);
            dl_Mua.DataBind();

        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tendangnhap = Session["username"] + "";
            if (tendangnhap != "")
            {
                //string mahang = ((Button)sender).CommandArgument;

                Button bt_mua = (Button)sender;
                string mahang = bt_mua.CommandArgument;
                DataListItem item = (DataListItem)bt_mua.Parent;
                TextBox txtSoLuong = (TextBox)item.FindControl("txt_SoLuong");
                string soluong = txtSoLuong.Text;

                string sql_dulieu = "select * from DONHANG where TENDANGNHAP = '" + tendangnhap 
                    + "' and MAHANG = '" + mahang + "'";

                string sql;
                DataTable dt = lopchung.docDuLieu(sql_dulieu);
                if (dt.Rows.Count > 0)
                {
                    //update
                    sql = "Update DONHANG set SOLUONG = SOLUONG+" + soluong + " where TENDANGNHAP = '" 
                        + tendangnhap + "' and MAHANG = '" + mahang + "'";
                }
                else
                {
                    //insert
                    sql = "insert into DONHANG values('" + tendangnhap + "','" + mahang + "'," +
                   "'" + soluong + "')";
                }
                int kq = lopchung.Nonequery(sql);
                if (kq > 0) lbTB.Text = "Thành công";
                else lbTB.Text = "Ko thành công";
            }
            else
            {
                lbTB.Text = "Bạn phải đăng nhập";
            }
        }

       
    }
}
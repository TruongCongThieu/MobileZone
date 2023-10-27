using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAn
{
    public partial class TrangChu : System.Web.UI.Page
    {
        LopDungChung lopchung = new LopDungChung();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string maloai = Context.Items["maloai"] + "";
            string sql;
            if(maloai != "")
            {
                sql = "select * from MATHANG where MaLoai = '" + maloai + "'";
            }
            else
            {
                sql = "select * from MATHANG";
            }
            dl_sanpham.DataSource = lopchung.docDuLieu(sql);
            dl_sanpham.DataBind();


            string tim = Context.Items["tim"] + "";
            if(tim != "")
            {
                string sql_tim = "select * from MATHANG where TenHang Like '%" + tim + "%'";
                dl_sanpham.DataSource = lopchung.docDuLieu(sql_tim);
                dl_sanpham.DataBind();
            }
            
           
        }
       
  
        protected void lbt_tendt_Click(object sender, EventArgs e)
        {
            string madt = ((LinkButton)sender).CommandArgument;
            Context.Items["id"] = madt;
            Server.Transfer("ChiTietSanPham.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            string madt = ((ImageButton)sender).CommandArgument;
            Context.Items["id"] = madt;
            Server.Transfer("ChiTietSanPham.aspx");
        }

        protected void ltb_gia_Click(object sender, EventArgs e)
        {
            string madt = ((LinkButton)sender).CommandArgument;
            Context.Items["id"] = madt;
            Server.Transfer("ChiTietSanPham.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            string madt = ((ImageButton)sender).CommandArgument;
            Context.Items["id"] = madt;
            Server.Transfer("ChiTietSanPham.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string madt = ((LinkButton)sender).CommandArgument;
            Context.Items["id"] = madt;
            Server.Transfer("ChiTietSanPham.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string madt = ((LinkButton)sender).CommandArgument;
            Context.Items["id"] = madt;
            Server.Transfer("ChiTietSanPham.aspx");
        }
    }
}
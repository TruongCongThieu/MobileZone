using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAn
{
    public partial class DangKi : System.Web.UI.Page
    {
        LopDungChung lopchung = new LopDungChung();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_DangKi_Click(object sender, EventArgs e)
        {
            string tendangnhap = txt_DangNhap.Text;
            string mk = txt_MK.Text;
            string nlmk = txt_NLMK.Text;
            string sql = "insert into KHACHHANG values('" + txt_DangNhap.Text + "', '" + txt_MK.Text + "')";
            
            int kq = lopchung.Nonequery(sql);
            if (kq > 0)
            {
                Server.Transfer("Login.aspx");
            }
            else lbTB.Text = "Tài khoản đã có người sử dụng rồi";
        }
    }
}
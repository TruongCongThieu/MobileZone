using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAn
{
    public partial class Login : System.Web.UI.Page
    {
        LopDungChung lopchung = new LopDungChung();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string tendangnhap = Login1.UserName;
            string matkhau = Login1.Password;
            string sql = "Select * from KHACHHANG where TenDangNhap ='" + tendangnhap + "'" +
                "And MatKhau = '" + matkhau + "'";
            DataTable dt = lopchung.docDuLieu(sql);

            if (dt.Rows.Count > 0)
            {
                Session["username"] = tendangnhap;
                Server.Transfer("TrangChu.aspx");
            }
            else
            {
                Login1.FailureText = "Tên và mật khẩu không đúng";
            }
        
        }
    }
}
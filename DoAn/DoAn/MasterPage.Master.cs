using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAn
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        LopDungChung lopchung = new LopDungChung();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sql = "select * from LOAIHANG";
            dl_hang.DataSource = lopchung.docDuLieu(sql);
            dl_hang.DataBind();
        }

        

        protected void ltb_loaidt_Click(object sender, EventArgs e)
        {
            string maloai = ((LinkButton)sender).CommandArgument;
            Context.Items["maloai"] = maloai;
            Server.Transfer("TrangChu.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string timkiem = txt_timkiem.Text;
            Context.Items["tim"] = timkiem;
            Server.Transfer("TrangChu.aspx");
        }
    }
}
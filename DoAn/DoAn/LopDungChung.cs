using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DoAn
{
    public class LopDungChung:System.Web.UI.Page
    {
        SqlConnection conn;
        private void layketnoi()
        {
            string chuoi = @"Data Source=LAPTOP-CJFDEDMJ\THIEUTRUONG;Integrated Security=SSPI;Initial Catalog=DOANDIENTHOAI";
            conn = new SqlConnection(chuoi);
            conn.Open();
        }
        private void dongketnoi()
        {
            if (conn.State == ConnectionState.Open)
                conn.Close();
        }

        public DataTable docDuLieu(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                layketnoi();
                SqlDataAdapter da = new SqlDataAdapter(sql, conn);
                da.Fill(dt);
            }
            catch
            {
              
                dt = null;
            }
            finally
            {
                dongketnoi();
            }
            return dt;
        }
        public int Nonequery(string sql)
        {
            int kq = 0;
            try
            {
                layketnoi();
                SqlCommand comm = new SqlCommand(sql, conn);
                kq = comm.ExecuteNonQuery();
            }
            catch
            {
                //loi
            }
            finally
            {
                dongketnoi();
            }
            return kq;
        }
        public Object scalar(string sql)
        {
            SqlCommand comm = new SqlCommand(sql, conn);
            layketnoi();
            int dem = (int)comm.ExecuteScalar();
            dongketnoi();
            return dem;
        }
    }
}
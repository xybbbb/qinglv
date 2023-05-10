using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DBHelper
    {
        private static string strsql = "server=.;database=qinglv;uid=sa;pwd=1234";
        public static DataTable CX(string sql)
        {
            SqlConnection conn = new SqlConnection(strsql);
            SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public static bool ZSG(string sql)
        {
            using (SqlConnection conn = new SqlConnection(strsql))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                return cmd.ExecuteNonQuery() > 0;
            }
        }
    }
}

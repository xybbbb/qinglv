using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Tu_dal
    {
        public static DataTable Select() {
            string sql = "select * from Tu";
            return DBHelper.CX(sql);
        }
        public static DataTable Select(int index)
        {
            string sql = "SELECT * FROM Tu ORDER BY id OFFSET " + index + " ROWS FETCH NEXT 5 ROWS ONLY";
            return DBHelper.CX(sql);
        }
        public static bool Delete(int id) {
            string sql = "delete Tu where Id='" + id + "'";
            return DBHelper.ZSG(sql);
        }
        public static bool Insert(string a) {
            string sql = "insert into Tu(Zid,Img) values(1,'"+a+"')";
            return DBHelper.ZSG(sql);
        }
    }
}

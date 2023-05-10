using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Net.Mime.MediaTypeNames;

namespace DAL
{
    public class Pinglun_dal
    {
        public static DataTable Select()
        {
            string sql = "select * from Pinglun order by Sum desc";
            return DBHelper.CX(sql);
        }
        public static bool Insert(string a, string b, string c)
        {
            string sql = "insert into Pinglun(Zid,Name,Yx,Nr) values(1,'" + a + "','" + b + "','" + c + "')";
            return DBHelper.ZSG(sql);
        }
        public static bool Delete(int id)
        {
            string sql = "delete Pinglun where Id='" + id + "'";
            return DBHelper.ZSG(sql);
        }
        public static DataTable Select(int index)
        {
            string sql = "SELECT * FROM Pinglun ORDER BY Sum DESC OFFSET " + index + " ROWS FETCH NEXT 5 ROWS ONLY";
            return DBHelper.CX(sql);
        }
        public static DataTable Selectx()
        {
            string sql = "SELECT COUNT(*) FROM Pinglun WHERE IsRead =0";
            return DBHelper.CX(sql);
        }
        public static bool Update()
        {
            string sql = "update Pinglun set IsRead=1 where IsRead=0";
            return DBHelper.ZSG(sql);
        }
        public static bool Update1()
        {
            string sql1 = "select * from Liu where id=1";
            DataTable dt = DBHelper.CX(sql1);
            int i = int.Parse(dt.Rows[0]["sum"].ToString());
            string sql = "update Liu set sum='" + (i + 1) + "' where id=1";
            return DBHelper.ZSG(sql);
        }
        public static DataTable Select3() {
            string sql = "select * from Liu where id=1";
            return DBHelper.CX(sql);
        }
        public static bool Update2(int id) {
            string sql = "update Pinglun set Sum=Sum+1 where id='"+id+"'";
            return DBHelper.ZSG(sql);
        }
        public static DataTable Select2(int id)
        {
            string sql = "select * from Pinglun where id='"+id+"'";
            return DBHelper.CX(sql);
        }
        public static bool Update3(string video) {
            string sql = "update Yemian set Video='" + video+"' where id=1";
            return DBHelper.ZSG(sql);
        }
    }
}

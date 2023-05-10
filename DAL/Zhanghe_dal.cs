using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Zhanghe_dal
    {
        public static bool Update(string pwd,string z,string p) {
            string sql = "update Zhanghe set Pwd='"+pwd+"' where Zhanghao='"+z+"' and Pwd='"+p+"'";
            return DBHelper.ZSG(sql);
        }
        public static bool Insert(Zhanghe zhanghe)
        {
            string sql = "insert into Zhanghe values('" + zhanghe.Zhanghao + "','" + zhanghe.Pwd + "')";
            return DBHelper.ZSG(sql);
        }
        public static DataTable Denglu(Zhanghe zhanghe) {
            string sql = "select * from Zhanghe where Zhanghao='"+zhanghe.Zhanghao+"' and Pwd='"+zhanghe.Pwd+"'";
            return DBHelper.CX(sql);
        }
        public static DataTable Select(int id) {
            string sql = "select * from Yemian y,Zhanghe z where y.Zid=z.Id and Zid='"+id+"'";
            return DBHelper.CX(sql);
        }
        public static DataTable Select1(string id)
        {
            string sql = "select * from Yemian y,Zhanghe z where y.Zid=z.Id and Zhanghao='" + id + "'";
            return DBHelper.CX(sql);
        }
        public static DataTable Select2(string zh) {
            string sql = "select * from Zhanghe where Zhanghao='"+zh+"'";
            return DBHelper.CX(sql);
        }
    }
}

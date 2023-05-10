using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Yemian_dal
    {
        public static DataTable Select()
        {
            string sql = "select * from Yemian";
            return DBHelper.CX(sql);
        }
        public static bool Update(int id, Yemian yemian)
        {
            string sql = "update Yemian set Dh1='" + yemian.Dh1 + "',Dh2='" + yemian.Dh2 + "',Tx1='" + yemian.Tx1 + "',Tx2='" + yemian.Tx2 + "',Xm1='" + yemian.Xm1 + "',Xm2='" + yemian.Xm2 + "',Sj='" + yemian.Sj + "' where Zid='" + id + "'";
            return DBHelper.ZSG(sql);
        }
        public static bool Insert(int id, Yemian yemian)
        {
            string sql = "insert into Yemian values('" + id + "','" + yemian.Dh1 + "','" + yemian.Dh2 + "','" + yemian.Tx1 + "','" + yemian.Tx2 + "','" + yemian.Xm1 + "','" + yemian.Xm2 + "','" + yemian.Sj + "')";
            return DBHelper.ZSG(sql);
        }
        public static DataTable Select1(int id)
        {
            string sql = "select * from Yemian where Zid='" + id + "'";
            return DBHelper.CX(sql);
        }
        public static bool Insert1(int id, Yemian yemian)
        {
            string sql = "update Yemian set Dh1='" + yemian.Dh1 + "',Dh2='" + yemian.Dh2 + "',Tx2='" + yemian.Tx2 + "',Xm1='" + yemian.Xm1 + "',Xm2='" + yemian.Xm2 + "',Sj='" + yemian.Sj + "' where Zid='" + id + "'";
            return DBHelper.ZSG(sql);
        }
        public static bool Insert2(int id, Yemian yemian)
        {
            string sql = "update Yemian set Dh1='" + yemian.Dh1 + "',Dh2='" + yemian.Dh2 + "',Tx1='" + yemian.Tx1 + "',Xm1='" + yemian.Xm1 + "',Xm2='" + yemian.Xm2 + "',Sj='" + yemian.Sj + "' where Zid='" + id + "'";
            return DBHelper.ZSG(sql);
        }
        public static bool Insert3(int id, Yemian yemian)
        {
            string sql = "update Yemian set Dh1='" + yemian.Dh1 + "',Dh2='" + yemian.Dh2 + "',Xm1='" + yemian.Xm1 + "',Xm2='" + yemian.Xm2 + "',Sj='" + yemian.Sj + "' where Zid='" + id + "'";
            return DBHelper.ZSG(sql);
        }
    }
}

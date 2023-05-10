using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Jilu_dal
    {
        public static DataTable Select() {
            string sql = "select * from jilu";
            return DBHelper.CX(sql);
        }
        public static DataTable Select(int index)
        {
            string sql = "SELECT * FROM jilu ORDER BY id OFFSET " + index + " ROWS FETCH NEXT 5 ROWS ONLY";
            return DBHelper.CX(sql);
        }
        public static bool Delete(int id) {
            string sql = "delete jilu where Id='"+id+"'";
            return DBHelper.ZSG(sql);
        }
        public static DataTable Select1(int id)
        {
            string sql = "select * from jilu where Id='" + id + "'";
            return DBHelper.CX(sql);
        }
        public static bool Update(int id,Jilu jilu) {
            string sql = "update jilu set Pd='"+jilu.Pd+"',Nr='"+jilu.Nr+"' where Id='"+id+"'";
            return DBHelper.ZSG(sql);
        }
        public static bool Insert(Jilu jilu) {
            string sql = "insert into jilu values(1,'"+jilu.Pd+"','"+jilu.Nr+"')";
            return DBHelper.ZSG(sql);
        }
    }
}

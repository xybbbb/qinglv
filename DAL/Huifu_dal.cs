using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Huifu_dal
    {
        public static bool Insert(Huifu huifu) {
            string sql = "insert into Huifu(Pid,Name,Yx,Nr,Sj) values('"+huifu.Pid+"','"+huifu.Name+"','"+huifu.Yx+"','"+huifu.Nr+"','"+huifu.Sj+"') ";
            return DBHelper.ZSG(sql);
        }
        public static DataTable Select() {
            string sql = "select * from Huifu";
            return DBHelper.CX(sql);
        }
    }
}

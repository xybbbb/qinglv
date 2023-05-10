using DAL;
using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Zhanghao_bll
    {
        public static DataTable Select2(string zh)
        {
            return Zhanghe_dal.Select2(zh);
        }
        public static bool Update(string pwd, string z, string p)
        {
            return Zhanghe_dal.Update(pwd, z, p);
        }
        public static bool Insert(Zhanghe zhanghe)
        {
            return Zhanghe_dal.Insert(zhanghe);
        }
        public static DataTable Denglu(Zhanghe zhanghe)
        {
            return Zhanghe_dal.Denglu(zhanghe);
        }
        public static DataTable Select(int id)
        {
            return Zhanghe_dal.Select(id);
        }
        public static DataTable Select1(string id)
        {
            return Zhanghe_dal.Select1(id);
        }
    }
}

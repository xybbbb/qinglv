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
    public class Yemian_bll
    {
        public static DataTable Select()
        {
            return Yemian_dal.Select();
        }
        public static bool Update(int id, Yemian yemian)
        {
            return Yemian_dal.Update(id, yemian);
        }
        public static DataTable Select1(int id)
        {
            return Yemian_dal.Select1(id);
        }
        public static bool Insert(int id, Yemian yemian)
        {
            return Yemian_dal.Insert(id, yemian);
        }
        public static bool Insert1(int id, Yemian yemian)
        {
            return Yemian_dal.Insert1(id,yemian);
        }
        public static bool Insert2(int id, Yemian yemian)
        {
            return Yemian_dal.Insert2(id, yemian);
        }
        public static bool Insert3(int id, Yemian yemian)
        {
            return Yemian_dal.Insert3(id, yemian);
        }
    }
}

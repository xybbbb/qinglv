
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
    public class Jilu_bll
    {
        public static DataTable Select()
        {
            return Jilu_dal.Select();
        }
        public static DataTable Select(int index)
        {
            return Jilu_dal.Select(index);
        }
        public static bool Delete(int id)
        {
            return Jilu_dal.Delete(id);
        }
        public static DataTable Select1(int id)
        {
            return Jilu_dal.Select1(id);
        }
        public static bool Update(int id,Jilu jilu)
        {
            return Jilu_dal.Update(id,jilu);
        }
        public static bool Insert(Jilu jilu)
        {
            return Jilu_dal.Insert(jilu);
        }
    }
}

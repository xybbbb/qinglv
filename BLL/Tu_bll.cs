using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Tu_bll
    {
        public static DataTable Select()
        {
            return Tu_dal.Select();
        }
        public static DataTable Select(int index)
        {
            return Tu_dal.Select(index);
        }
        public static bool Delete(int id)
        {
            return Tu_dal.Delete(id);
        }
        public static bool Insert(string a)
        {
            return Tu_dal.Insert(a);
        }
    }
}

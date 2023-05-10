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
    public class Huifu_bll
    {
        public static bool Insert(Huifu huifu)
        {
            return Huifu_dal.Insert(huifu);
        }
        public static DataTable Select()
        {
            return Huifu_dal.Select();
        }
    }
}

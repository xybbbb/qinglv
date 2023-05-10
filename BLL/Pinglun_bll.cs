using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Pinglun_bll
    {
        public static DataTable Select()
        {
            return Pinglun_dal.Select();
        }
        public static bool Insert(string a, string b, string c)
        {
            return Pinglun_dal.Insert(a, b, c);
        }
        public static bool Delete(int id)
        {
            return Pinglun_dal.Delete(id);
        }
        public static DataTable Select(int index)
        {
            return Pinglun_dal.Select(index);
        }
        public static DataTable Selectx()
        {
            return Pinglun_dal.Selectx();
        }
        public static bool Update()
        {
            return Pinglun_dal.Update();
        }
        public static bool Update1()
        {
            return Pinglun_dal.Update1();
        }
        public static DataTable Select3()
        {
            return Pinglun_dal.Select3();
        }
        public static bool Update2(int id)
        {
            return Pinglun_dal.Update2(id);
        }
        public static DataTable Select2(int id)
        {
            return Pinglun_dal.Select2(id);
        }
        public static bool Update3(string video)
        {
            return Pinglun_dal.Update3(video);
        }
    }
}

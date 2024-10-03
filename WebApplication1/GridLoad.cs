using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class GridLoad
    {

        private string id;
        private string name;
        private string product;
        private string type;
        private string grain;
        private string price;





        public GridLoad(string line)
        {
            string[] data = line.Split('|');
            id = data[0];
            name = data[1];
            product = data[2];
            type = data[3];
            grain = data[4];
            price = data[5];
        }

        public string Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public string Product { get => product; set => product = value; }
        public string Type { get => type; set => type = value; }
        public string Grain { get => grain; set => grain = value; }
        public string Price { get => price; set => price = value; }

        public static List<GridLoad> CreateGrid()
        {
            List<GridLoad> grid = new List<GridLoad>();


            try
            {
                StreamReader sr = new StreamReader(HttpContext.Current.Server.MapPath("~/Data.txt"));
                string ln = sr.ReadLine();


                while (!string.IsNullOrEmpty(ln))
                {
                    GridLoad G = new GridLoad(ln);
                    grid.Add(G);
                    ln = sr.ReadLine();
                }

                sr.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            return grid;


        }
        public static void InputData(string line)
        {
            using (StreamWriter sw = new StreamWriter(HttpContext.Current.Server.MapPath("~/Data.txt"), true))
            {
                try
                {
                    sw.WriteLine(line);

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                }
            }
        }
    }
}
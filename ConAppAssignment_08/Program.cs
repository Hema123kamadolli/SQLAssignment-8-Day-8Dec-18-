using System;
using System.Data.SqlClient;
namespace ConAppAssignment_08
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string conStr = "server=HP;database=Assignment_08;trusted_connection=true;";
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("select Top 5 * from Products Order By PName DESC", con))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        Console.WriteLine("Top 5 Records:");
                        Console.WriteLine("Pid\t  PName\t\tPPrice\t\tMfgDate   \t\tExpDate");
                        while (reader.Read())
                        {
                            Console.WriteLine($"{reader["Pid"]}{reader["PName"]}\t{reader["PPrice"]}\t\t{reader["MfgDate"]}\t{reader["ExpDate"]}\t");
                        }
                        Console.ReadKey();
                    }
                }
            }
        }
    }
}
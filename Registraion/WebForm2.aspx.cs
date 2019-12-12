using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registraion
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected String getConnection()
        {
            return ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        }
        protected void list_click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(getConnection()))
                {
                    string sql = @"SELECT * FROM info";
                    using (SqlCommand sc = new SqlCommand(sql,con))
                    {
                        con.Open();
                        sc.ExecuteNonQuery();
                        using (SqlDataAdapter sda = new SqlDataAdapter(sc))
                        {
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                lv.DataSource = dt;
                                lv.DataBind();
                                dl.DataSource = dt;
                                dl.DataBind();
                            }
                        }
                        con.Close();
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
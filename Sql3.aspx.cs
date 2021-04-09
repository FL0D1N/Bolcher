using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Windows.Forms;

namespace Birger_Bolcher
{
    public partial class Sql3 : System.Web.UI.Page
    {
        string Conn = @"Data Source=DESKTOP-5OTVSE3\SQLEXPRESS;Initial Catalog=Bolcher;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
           
                using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString))
                {
                    if(cn.State == ConnectionState.Closed)
                    {
                        cn.Open();
                        using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM BOLCHER", cn))
                        {

                            da.Fill(dt);
                            GridView1.DataSource = dt;
                        }
                    }
                }
        }
        DataTable dt = new DataTable("Bolcher");
        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(Conn))
            {
                sqlCon.Open();
                SqlCommand command = new SqlCommand("SELECT * FROM Bolcher", sqlCon);
                SqlDataAdapter SqlDa = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                SqlDa.Fill(ds);

            };
        }

        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)13)
            {
                DataView dv = dt.DefaultView;
                dv.RowFilter = string.Format("Navn LIKE '%{0}%'", TextBox1.Text);
                GridView1.DataSource = dv.ToTable();
            }
        }
    }
}
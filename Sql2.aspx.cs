using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Birger_Bolcher
{
    public partial class Sql2 : System.Web.UI.Page
    {

        string Conn = @"Data Source=DESKTOP-5OTVSE3\SQLEXPRESS;Initial Catalog=Bolcher;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void AllRed_Btn_Click(object sender, EventArgs e)
        {
         
            using (SqlConnection sqlCon = new SqlConnection(Conn))
            {


                sqlCon.Open();
                SqlCommand command = new SqlCommand("SELECT * FROM Bolcher Where Farve = 'Rød'", sqlCon);
                SqlDataAdapter SqlDa = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                SqlDa.Fill(ds);
                
            };
         
       
        }
        protected void AllAlfa(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(Conn))
            {

                sqlCon.Open();
                SqlCommand command = new SqlCommand("SELECT * FROM Bolcher WHERE Farve = 'Rød' && 'Blå' ", sqlCon);
                SqlDataAdapter SqlDa = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                SqlDa.Fill(ds);

            };
        }
        protected void RedAndBlue_Btn_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(Conn))
            {

                sqlCon.Open();
                SqlCommand command = new SqlCommand("SELECT * FROM Bolcher WHERE Farve == 'Rød' && 'Blå' ", sqlCon);
                SqlDataAdapter SqlDa = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                SqlDa.Fill(ds);

            };



        }
        protected void Btn_B_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(Conn))
            {

                sqlCon.Open();
                SqlCommand command = new SqlCommand("SELECT Navn FROM Bolcher where Navn like 'B%' ", sqlCon);
                SqlDataAdapter SqlDa = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                SqlDa.Fill(ds);
                

            };

        }

        protected void Btn_e_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(Conn))
            {

                sqlCon.Open();
                SqlCommand command = new SqlCommand("SELECT Navn FROM Bolcher where Navn like '%E%' ", sqlCon);
                SqlDataAdapter SqlDa = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                SqlDa.Fill(ds);


            };
        }

        protected void Btn_num(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(Conn))
            {

                sqlCon.Open();
                SqlCommand command = new SqlCommand("SELECT kg FROM Bolcher where kg > 10 AND ORDER_BY ASC ", sqlCon);
                SqlDataAdapter SqlDa = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                SqlDa.Fill(ds);
            };
        }

        protected void Btn_2_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(Conn))
            {
                sqlCon.Open();
                SqlCommand command = new SqlCommand("SELECT Name, Kg FROM Bolcher where kg Between 10 AND 12 ORDER_BY ASC", sqlCon);
                SqlDataAdapter SqlDa = new SqlDataAdapter(command);
                
                DataSet ds = new DataSet();
                SqlDa.Fill(ds);
            };
        }

        protected void Btn_3_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(Conn))
            {
                sqlCon.Open();
                SqlCommand command = new SqlCommand("select MAX(CAST(amount as INT)) from Bolcher IN Kg", sqlCon);
                SqlDataAdapter SqlDa = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                SqlDa.Fill(ds);
            };
        }

    }
}
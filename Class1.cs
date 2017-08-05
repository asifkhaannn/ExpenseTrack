using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.UI;
/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1 
{
    public static SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BudgetPlannerConnectionString"].ToString());

        public static DataSet sql_DataAdapaterFill(string S_command)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection=conn;
            cmd.CommandText=S_command;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            da.Fill(ds);
            conn.Close();
            return ds;
            
        }

        


        public static string fun_check(GridView GridView1)
        {
            int  counter = 0;
            string Selected=null;
            
            try
            {

                foreach (GridViewRow row in GridView1.Rows)
                {
                    CheckBox cb = (CheckBox)row.FindControl("ChkSelect");

               
                    if (cb != null && cb.Checked)
                    {

                        counter++;
                        Selected = Convert.ToString(GridView1.DataKeys[row.RowIndex].Value);
                        //Response.Write(username);
                        //return Selected;

                    }


                }

                if (counter!=1)
                {

                    HttpContext.Current.Response.Write("<script>alert('Please select one value and Try Again!!!')</script>");
                    HttpContext.Current.Response.End();
                    HttpContext.Current.Response.Close();
                }
                return Selected;
            }
            catch (HttpException e)
            {
                HttpContext.Current.Response.Write("<script>alert('Please select one value and Try Again!!!')</script>");
                return Selected;
            }
        }

    public static string sql_select(string S_command)
    {
        conn.Open();
        
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText=S_command;
        cmd.Connection=conn;
        SqlDataReader rdr;
        rdr=cmd.ExecuteReader();

        string temp=null;
        while (rdr.Read())
        {

          temp= rdr["ReconciliationStatusID"].ToString();

//HttpContext.Current.Response.Write(temp);
        }
        conn.Close();
        return temp;
    }

    public static void sql_Update_Insert_Delete(string S_command)
    {
try
{
        conn.Open();        
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText=S_command;
        cmd.Connection=conn;
        int count = cmd.ExecuteNonQuery();  
        if (count > 0)    
        {
         HttpContext.Current.Response.Write("<script>alert('The  Activity has done  Successfully ')</script>");
        }
            else
            HttpContext.Current.Response.Write("<script>alert('Sorry !!! Activity has not done  Successfully')</script>");

        conn.Close();
}
        catch (SqlException e)
        {
		
		HttpContext.Current.Response.Write("<script>alert('hi')</script>");

          //  HttpContext.Current.Response.Write("<script>alert('"+e.Message.ToString()+"')</script>");
        }
    }


    public static int sql_Count(string S_command)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = S_command;
        cmd.Connection = conn;
        int count = 0;
            
           count= (int)cmd.ExecuteScalar();
           conn.Close();
        return count;
       
    }


    
	}

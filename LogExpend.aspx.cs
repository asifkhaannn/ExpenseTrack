using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpTracker
{
    public partial class LogExpend : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int catid = Int32.Parse(DropDownList1.SelectedItem.Value);
            var date = Calendar1.SelectedDate;
            var amount = TextBox1.Text;
            string statement = "insert into Expenditure(CatID,ExpendDate,Value) VALUES (" + catid + ",'" + date + "'," + amount + ")";

            Class1.sql_Update_Insert_Delete(statement);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LateReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void calculator()
    {
        long Late_time = 0;
        foreach (GridViewRow row in GridView1.Rows)
        {
            TextBox txtbox = (TextBox)row.FindControl("txtcal");
            long Nofity_time = long.Parse(txtbox.Text);
            long Usual_time = long.Parse(row.Cells[2].Text);
            Late_time += Nofity_time - Usual_time;
        }
        GridViewRow gvrow = GridView1.Rows[2];

        // Label1.Text = Late_time.ToString();

    }


}
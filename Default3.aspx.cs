using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Rep_Bind();
    }
    private void Rep_Bind()
    {
        SqlDataAdapter adp = new SqlDataAdapter("select * from tbbook where ( bookid in (107,108,109))", ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
    }
}
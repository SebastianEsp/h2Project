{
    public partial class Admindeleteedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["type"] != "administrator")
            {
                Response.Redirect("sti til admin delete edit");
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}
}
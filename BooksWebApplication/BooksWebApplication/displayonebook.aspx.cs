using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BooksWebApplication
{
    public partial class displayonebook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id;
            ClassBook book;
            if (int.TryParse(Request.QueryString["bookid"], out id))
            {
                book = DataUtilityClass.SelectBookByID(id);
                if (book != null)
                {
                    TBCategory.Text = book.Category;
                    TBPrice.Text = "$ " + book.Price.ToString();
                    TBPublishDate.Text = book.PublishDate;
                    TBSaleDate.Text = book.SaleDate;
                    TBTitle.Text = book.Title;
                }
                else
                {
                    Response.Redirect("displayall.aspx");
                }
            }
            else
            {
                Response.Redirect("displayall.aspx");
            }

        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void BtnDisplayBooks_Click(object sender, EventArgs e)
        {
            Response.Redirect("displayall.aspx");
        }
    }
}
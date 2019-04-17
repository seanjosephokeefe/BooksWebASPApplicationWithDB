using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BooksWebApplication
{
    public partial class displayall : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<ClassBook> books = DataUtilityClass.SelectAllBooks();
            BuildHTMLTable(books);
            BuildBooksDropDown(books);
        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void BtnDisplayBooks_Click(object sender, EventArgs e)
        {
            Response.Redirect("displayall.aspx");
        }

        private void BuildBooksDropDown(List<ClassBook> books)
        {
            for (int i = 0; i < books.Count; i++)
            {
                DDBooks.Items.Add(new ListItem(books[i].Title, books[i].BookID.ToString()));
            }
        }

        private void BuildHTMLTable(List<ClassBook> books)
        {
            var html = "<table id='TblTitles'><tr><th class='pinkUnderline'>Title</th></tr>";
            if (books == null)
            {
                html = "<tr><td class='center'>There are no books stored in the application yet.</td></tr>";
            }
            else
            {
                for (int i = 0; i < books.Count; i++)
                {
                    html += "<tr";
                    if (i%2 == 1)
                        html += " class='lightpink' ";
                    html += ">";
                    html += "<td class='center'>";
                    html += books[i].Title;
                    html += "</td>";
                    html += "</tr>";
                }
            }
            html += "</table>";
            DivTableResults.InnerHtml = html;
        }

        protected void BtnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("displayonebook.aspx?bookid=");
        }

        protected void DDBooks_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DDBooks.SelectedIndex != 0)
            {
                Response.Redirect("displayonebook.aspx?bookid="+DDBooks.SelectedValue);
            }
        }
    }
}
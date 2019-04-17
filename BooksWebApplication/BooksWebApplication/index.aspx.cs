using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BooksWebApplication
{
    public partial class index : System.Web.UI.Page
    {

        private static Decimal price;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                ClearErrors();
        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void BtnDisplayBooks_Click(object sender, EventArgs e)
        {
            Response.Redirect("displayall.aspx");
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            if (ValidateFields())
            {
                //String saleDate = "";
                //var d = CalSaleDate.SelectedDate;
                String saleDate= Convert.ToDateTime(CalSaleDate.SelectedDate).ToString("MM/dd/yyyy");
                DataUtilityClass.InsertBook(new ClassBook(TBTitle.Text, TBPublishDate.Text, Convert.ToDecimal(TBPrice.Text), saleDate, DDCategory.SelectedItem.ToString()));
                Response.Redirect("displayall.aspx");
            }
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            ClearAllFields();
        }

        private Boolean ValidateFields()
        {
            DateTime checkDate;

            ClearErrors();
            Boolean isValid = true;
            if (String.IsNullOrEmpty(TBTitle.Text))
            {
                isValid = false;
                LblErrorTBTitle.Visible = true;
            }
            if ((String.IsNullOrEmpty(TBPublishDate.Text)) || (!DateTime.TryParse(TBPublishDate.Text, out checkDate)))
            {
                isValid = false;
                LblErrorDPPubDate.Visible = true;
            }
            if ((String.IsNullOrEmpty(TBPrice.Text)) || (!Decimal.TryParse(TBPrice.Text, out price)))
            {
                isValid = false;
                LblErrorTBPrice.Visible = true;
            }
            if (DDCategory.SelectedIndex == 0)
            {
                isValid = false;
                LblErrorDDCategory.Visible = true;
            }
            if (CalSaleDate.SelectedDate.ToString() == "1/1/0001 12:00:00 AM")
            {
                isValid = false;
                LblErrorCalSaleDate.Visible = true;
            }
            return isValid;
        }

        private void ClearAllFields()
        {
            ClearErrors();
            foreach (var item in Page.Controls)
            {
                if (item is TextBox)
                {
                    ((TextBox)item).Text = "";
                }
            }
            DDCategory.SelectedIndex = 0;
        }

        private void ClearErrors()
        {
            LblErrorTBTitle.Visible = false;
            LblErrorDPPubDate.Visible = false;
            LblErrorDDCategory.Visible = false;
            LblErrorTBPrice.Visible = false;
            LblErrorMessage.Visible = false;
            LblErrorCalSaleDate.Visible = false;
        }
    }
}
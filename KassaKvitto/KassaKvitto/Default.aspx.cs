using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KassaKvitto.Model;

namespace KassaKvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalculateDiscount_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var receipt = new Receipt(double.Parse(TotalSum.Text));
                Cost.Text = string.Format("{0:f} kr", receipt.Subtotal);
                DiscountRate.Text = string.Format("{0:p0}", receipt.DiscountRate);
                Discount.Text = string.Format("{0:c}", receipt.MoneyOff);
                ToPay.Text = string.Format("{0:c}", receipt.Total);
                ReceiptTable.Visible = true;
            }
        }
    }
}
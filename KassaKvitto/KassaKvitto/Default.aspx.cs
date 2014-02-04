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
            var sum = double.Parse(TotalSum.Text);
            var receipt = new Receipt(sum);
            var subTotal = receipt.Subtotal;
            var total = receipt.Total;
            var discount = receipt.MoneyOff;
            var rate = receipt.DiscountRate;
            ReceiptTable.Visible = true;
            Cost.Text = string.Format("{0:c}", subTotal);
            DiscountRate.Text = string.Format("{0:p0}", rate);
            Discount.Text = string.Format("{0:c}", discount);
            ToPay.Text = string.Format("{0:c}", total);
        }
    }
}
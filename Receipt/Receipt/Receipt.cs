using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Receipt
{
    public class Receipt
    {
        private double _subtotal;
        public double DiscountRate { get; private set; }
        public double MoneyOff { get; private set; }
        public double Subtotal { get; set; }
        public double Total { get; private set; }
        public void Calculate(double subtotal)
        {

        }
        public Receipt(double subtotal) {
        }
    }
}
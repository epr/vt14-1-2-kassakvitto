﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KassaKvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Kassakvitto - Eddy Proca</title>
    <link href="~/screen.css" rel="stylesheet">
</head>
<body>
    <h1>Kassakvitto</h1>
    <form id="receiptform" runat="server">
    <div>
        <label for="TotalSum">Total köpesumma:</label>
    </div>
    <div>
        <%-- User input of sum --%>
        <asp:TextBox ID="TotalSum" runat="server" autofocus="autofocus"></asp:TextBox><asp:Label ID="SumUnit" runat="server" Text="kr"></asp:Label>
        <asp:RequiredFieldValidator CssClass="error" ControlToValidate="TotalSum" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Empty input" Display="Dynamic" Text="Ange en total köpesumma."></asp:RequiredFieldValidator>
        <asp:CompareValidator CssClass="error" ControlToValidate="TotalSum" ValueToCompare="0" Operator="GreaterThan" Type="Double" ID="CompareValidator1" runat="server" ErrorMessage="NotDoubleGreaterThanZero" Display="Dynamic" Text="Ange en total köpesumma större än 0."></asp:CompareValidator>
    </div>
    <div>
        <%-- Action to calculate --%>
        <asp:Button ID="CalculateDiscount" runat="server" Text="Beräkna rabatt" OnClick="CalculateDiscount_Click" />
    </div>
    <%-- Receipt presentation --%>
    <asp:PlaceHolder ID="ReceiptTable" runat="server" Visible="false">
        <div class="receipt">
            <h2>DeVe</h2>
            <p>en del av <strong>EllenU</strong></p>
            <p>Tel: 0772-28 80 00</p>
            <p>Öppettider 8-17</p>
            <p>EV. FEL GER UNDERKÄNT</p>
            <dl>
                <dt>Totalt</dt>
                <dd><asp:Label ID="Cost" runat="server" Text="Label"></asp:Label></dd>
                <dt>Rabattsats</dt>
                <dd><asp:Label ID="DiscountRate" runat="server" Text="Label"></asp:Label></dd>
                <dt>Rabatt</dt>
                <dd><asp:Label ID="Discount" runat="server" Text="Label"></asp:Label></dd>
                <dt>Att betala</dt>
                <dd><asp:Label ID="ToPay" runat="server" Text="Label"></asp:Label></dd>
            </dl>
            <p>ORN.NR: 202100-6271</p>
            <p>VÄLKOMMEN ÅTER!</p>
        </div>
    </asp:PlaceHolder>
    </form>
</body>
</html>

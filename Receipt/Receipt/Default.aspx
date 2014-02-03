<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Receipt.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Kassakvitto - Eddy Proca</title>
</head>
<body>
    <h1>Kassakvitto</h1>
    <form id="receiptform" runat="server" defaultbutton="CalculateDiscount">
    <div>
        <label for="TotalSum">Total köpesumma:</label>
    </div>
    <div>
        <asp:TextBox ID="TotalSum" runat="server" autofocus="autofocus"></asp:TextBox><asp:Label ID="SumUnit" runat="server" Text="kr"></asp:Label>
    </div>
    <div>
        <asp:Button ID="CalculateDiscount" runat="server" Text="Beräkna rabatt" OnClick="CalculateDiscount_Click" />
    </div>
    </form>
</body>
</html>

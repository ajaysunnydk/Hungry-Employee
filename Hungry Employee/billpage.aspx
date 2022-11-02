<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="billpage.aspx.cs" Inherits="Hungry_Employee.billpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" />
    <link rel="stylesheet" href="styles/style.css" />
</head>
<body>
    <div id="login-form-wrap">
        <form id="form1" runat="server">
            <p>
                <input runat="server" type="text" id="orderid" name="orderid" placeholder="Enter your Order ID" required="required" /><i class="validation"><span></span><span></span></i>
            </p>
            <p>
                <input runat="server" type="text" id="coupon" name="coupon" placeholder="Enter Coupon Code" required="required" /><i class="validation"><span></span><span></span></i>
            </p>
            <hr />

            <asp:Button ID="login" runat="server" Text="Apply Coupon" OnClick="Coupon_Click" />
            <p id="P11" runat="server" visible="false">a</p>
            <p id="P22" runat="server" visible="false">a</p>
            <p style="color: green" id="P33" runat="server" visible="false">a</p>
            <hr />

            <p id="P44" runat="server" visible="false">a</p>
            <br />
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Proceed to Pay" />
            </p>
            <br />
        </form>
    </div>
</body>
</html>

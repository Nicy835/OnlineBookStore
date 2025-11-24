<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="website.cart" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your Shopping Cart</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: url('image/cart.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .cart-container {
            width: 500px;
            margin: 100px auto;
            background: rgba(255, 255, 255, 0.9); 
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.3);
            text-align: center;
        }
        h2 {
            color: #333;
        }
        .links {
            margin-top: 20px;
        }
        .links a {
            text-decoration: none;
            margin: 0 10px;
            padding: 8px 15px;
            border-radius: 5px;
            background: #007bff;
            color: #fff;
            transition: 0.3s;
        }
        .links a:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="cart-container">
            <h2>Your Shopping Cart</h2>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br /><br />

            <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="false" 
                          GridLines="None" CssClass="grid">
                <Columns>
                    <asp:BoundField DataField="BookTitle" HeaderText="Book Title" />
                </Columns>
            </asp:GridView>

            <div class="links">
                <asp:HyperLink ID="lnkCart" runat="server" NavigateUrl="Checkout.aspx">🛒 Buy Book</asp:HyperLink>
                <asp:HyperLink ID="lnkBack" runat="server" NavigateUrl="Defaultt.aspx">← Continue Shopping</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>

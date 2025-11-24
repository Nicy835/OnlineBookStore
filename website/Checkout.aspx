<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="website.Checkout" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout - Book Orbit</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: url('image/checkout.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .checkout-box {
            width: 600px;
            margin: 100px auto;
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 5px 20px rgba(0,0,0,0.3);
            text-align: center;
        }
        h2 {
            color: brown;
            margin-bottom: 20px;
        }
        .message {
            font-size: 18px;
            color: #333;
            margin-bottom: 10px;
            display: block;
        }
        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }
        .book-list {
            margin: 20px auto;
            border-collapse: collapse;
            width: 100%;
        }
        .book-list th, .book-list td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        .book-list th {
            background: #f2f2f2;
            color: brown;
        }
        .total {
            margin-top: 15px;
            font-size: 20px;
            color: green;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="checkout-box">
            <h2>CHECKOUT</h2>

            <asp:GridView ID="gvCheckout" runat="server" CssClass="book-list" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Book Title" />
                    <asp:BoundField DataField="Price" HeaderText="Price (₹)" />
                </Columns>
            </asp:GridView>

            <asp:Label ID="lblTotal" runat="server" CssClass="total"></asp:Label>
            <br /><br />

            <asp:Label CssClass="message" Text="✅ Thank you for your purchase!" runat="server" />
            <asp:Label CssClass="message" Text="📚 Please Visit Again - Book Orbit!" runat="server" />
            <div class="footer">© 2025 Book Orbit. All Rights Reserved.</div>
        </div>
    </form>
</body>
</html>

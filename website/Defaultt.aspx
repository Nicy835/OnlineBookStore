<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Defaultt.aspx.cs" Inherits="website.Defaultt" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Book Shop</title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <h2>Welcome to Online Book Orbit Shop</h2>
            <asp:Label ID="lblUser" runat="server" ForeColor="Green"></asp:Label>
            <br /><br />

            <asp:GridView ID="gvBooks" runat="server" AutoGenerateColumns="False"
                OnRowCommand="gvBooks_RowCommand" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Book ID" />
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:ButtonField ButtonType="Button" CommandName="AddToCart" Text="Add to Cart" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>

            <br />
            <asp:HyperLink ID="lnkCart" runat="server" NavigateUrl="Cart.aspx">View Cart</asp:HyperLink> |
            <asp:HyperLink ID="lnkReviews" runat="server" NavigateUrl="Reviews.aspx">Reviews</asp:HyperLink> |
            <asp:HyperLink ID="lnkLogin" runat="server" NavigateUrl="Login.aspx">Login</asp:HyperLink> <br><br>
           <center> <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" Visible="true" /><center>
        </center>
    </form>
</body>
</html>

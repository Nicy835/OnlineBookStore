<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="website.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style>
        body {
            background-image: url('image/page1.jpg'); 
            background-size: cover; 
            background-repeat: no-repeat;
            background-position: center;
            height: 100vh;
            margin: 0;
        }

        .login-box {
            width: 350px;
            margin: 100px auto;
            padding: 25px;
            background: rgba(255, 255, 255, 0.85); 
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <h2>User Login</h2>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br />

            <asp:Label Text="Username:" runat="server" />
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox><br />

            <asp:Label Text="Password:" runat="server" />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox><br />

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary btn-block" OnClick="btnLogin_Click" /><br />

            <asp:HyperLink ID="lnkHome" runat="server" NavigateUrl="Default.aspx">Back to Home</asp:HyperLink>
        </div>
    </form>
</body>
</html>

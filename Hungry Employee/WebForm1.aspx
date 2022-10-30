<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Hungry_Employee.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login to Hungry Employee</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"/>
    <link rel="stylesheet" href="styles/style.css"/>
</head>
<body>
    <div id="login-form-wrap">
    <form id="form1" runat="server">
            <p>
                <input runat="server" type="text" id="username" name="username" placeholder="Username" required="required"/><i class="validation"><span></span><span></span></i>
            </p>
            <p>
                <input runat="server" type="password" id="password" name="password" placeholder="Password" required="required"/><i class="validation"><span></span><span></span></i>
            </p>
            <p>
                <asp:Button id="login" runat="server" Text="Login" OnClick="login_Click" />
            </p>
        <%--<asp:GridView ID="GridView1" runat="server"></asp:GridView>--%>

        </form>
        <div id="create-account-wrap">
            <p>Not a member?  <asp:HyperLink ID="Link1" runat="server" NavigateUrl="~/Registration.aspx" Text="Create Account" /> </p>
            
        </div>
    </div>
    
    
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Hungry_Employee.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register here</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" />
    <link rel="stylesheet" href="styles/style.css" />
</head>
<body>
    <%--<script>
        function myFuntion() {
            alert("Password not matched!");
        }
    </script>--%>

    <div id="login-form-wrap">
        <form id="form1" runat="server">

            <p>
                <input runat="server" type="text" id="name" name="name" placeholder="Name" required="required" /><i class="validation"><span></span><span></span></i>
            </p>

            <p>
                <input runat="server" type="text" id="phone" name="phonenumber" placeholder="Phone Number" required="required" /><i class="validation"><span></span><span></span></i>
            </p>

            <p>
                <input runat="server" type="text" id="username" name="username" placeholder="Username" required="required" /><i class="validation"><span></span><span></span></i>
            </p>
            <p>
                <input runat="server" type="password" id="password" name="password" placeholder="Enter Password" required="required" /><i class="validation"><span></span><span></span></i>
            </p>
            <p>
                <input runat="server" type="password" id="cnfpassword" name="password" placeholder="Confirm Password" required="required" /><i class="validation"><span></span><span></span></i>
            </p>
            <p>
                <asp:Button ID="login" runat="server" Text="Create Account" OnClick="login_Click" />
            </p>
            <p style="font-size: 12px;color: red;" id="hiddenp" runat="server" visible="false">
                Username Already Exists
            </p>

        </form>
        <div id="create-account-wrap">
            <p>Already a member? 
                <asp:HyperLink ID="Link1" runat="server" NavigateUrl="~/WebForm1.aspx" Text="Login" />
            </p>

        </div>
    </div>
</body>
</html>

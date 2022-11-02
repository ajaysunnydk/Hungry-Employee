﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="capstone_login.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login:Craveyard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"/>
    <link rel="stylesheet" href="styles/style.css"/>
    
    <style>
        html{
    background-image: linear-gradient( #000000,#6E1212 );
    background-repeat: no-repeat;
      background-attachment: fixed;
    background-color:white;
    
   
 

        }
        body {
    
    background-position:center;
    background-repeat: no-repeat;
    background-attachment: fixed;
    font-size: 1.6rem;
    font-family: "Open Sans", sans-serif;
    color: #2b3e51;
    
 

   
}
      
        h1{
            color:white;
            text-align:left;
            font-size:150%;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }

h2 {
  font-weight: 300;
  text-align: center;
}

p {
  position: relative;
}

#hiddenp{
    
}

a,
a:link,
a:visited,
a:active {
  color: #3ca9e2;
  -webkit-transition: all 0.2s ease;
  transition: all 0.2s ease;
}
a:focus, a:hover,
a:link:focus,
a:link:hover,
a:visited:focus,
a:visited:hover,
a:active:focus,
a:active:hover {
  color: #329dd5;
  -webkit-transition: all 0.2s ease;
  transition: all 0.2s ease;
}

#login-form-wrap {
  background-color: #fff;
  width: 35%;
  margin: 30px auto;
  text-align: center;
  padding: 20px 0 0 0;
  border-radius: 4px;
  box-shadow: 0px 30px 50px 0px rgba(0, 0, 0, 0.2);
  
}

#login-form-wrap1 {
    background-color: #fff;
    width: 85%;
    margin: 20px auto;
    text-align: center;
    padding: 20px 0 0 0;
    border-radius: 4px;
    box-shadow: 0px 30px 50px 0px rgba(0, 0, 0, 0.2);
}


#form1 {
    padding: 0 60px;
}

input {
  display: block;
  box-sizing: border-box;
  width: 100%;
  outline: none;
  height: 60px;
  line-height: 60px;
  border-radius: 4px;
}

input[type="text"],
input[type="password"] {
  width: 100%;
  padding: 0 0 0 10px;
  margin: 0;
  color: #8a8b8e;
  border: 1px solid #c2c0ca;
  font-style: normal;
  font-size: 16px;
  -webkit-appearance: none;
     -moz-appearance: none;
  position: relative;
  display: inline-block;
  background: none;
}
input[type="text"]:focus,
input[type="password"]:focus {
  border-color: #3ca9e2;
}
input[type="text"]:focus:invalid,
input[type="password"]:focus:invalid {
  color: #cc1e2b;
  border-color: #cc1e2b;
}
input[type="text"]:valid ~ .validation,
input[type="password"]:valid ~ .validation {
  display: block;
  border-color: #0C0;
}
input[type="text"]:valid ~ .validation span,
input[type="password"]:valid ~ .validation span {
  background: #0C0;
  position: absolute;
  border-radius: 6px;
}
input[type="text"]:valid ~ .validation span:first-child,
input[type="password"]:valid ~ .validation span:first-child {
  top: 30px;
  left: 14px;
  width: 20px;
  height: 3px;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
input[type="text"]:valid ~ .validation span:last-child,
input[type="password"]:valid ~ .validation span:last-child {
  top: 35px;
  left: 8px;
  width: 11px;
  height: 3px;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}

.validation {
  display: none;
  position: absolute;
  content: " ";
  height: 60px;
  width: 30px;
  right: 15px;
  top: 0px;
}

input[type="submit"] {
  border: none;
  display: block;
  background-color: #000000;
  color: #fff;
  font-weight: bold;
  text-transform: uppercase;
  cursor: pointer;
  -webkit-transition: all 0.2s ease;
  transition: all 0.2s ease;
  font-size: 18px;
  position: relative;
  display: inline-block;
  cursor: pointer;
  text-align: center;
}
input[type="submit"]:hover {
  background-color: #329dd5;
  -webkit-transition: all 0.2s ease;
  transition: all 0.2s ease;
}

#create-account-wrap {
  background-color: #000000;
  color: #8a8b8e;
  font-size: 14px;
  width: 100%;
  padding: 10px 0;
  border-radius: 0 0 4px 4px;
}

    </style>
   
</head>
    
<body>
    <h1>Craveyard!</h1>
    <div id="login-form-wrap">
    <form id="form1" runat="server">
            <p>
                <input runat="server" type="text" id="username" name="username" placeholder="Username" required="required"/><i class="validation"><span></span><span></span></i>
            </p>
            <p>
                <input runat="server" type="password" id="password" name="password" placeholder="Password" required="required"/><i class="validation"><span></span><span></span></i>
            </p>
            <p>
                <asp:Button id="login" runat="server" Text="Login"/>
            </p>
        <%--<asp:GridView ID="GridView1" runat="server"></asp:GridView>--%>
        <p style="font-size: 12px;color: red;" id="hiddenwrong" runat="server" visible="false">
                Wrong Password
            </p>

        </form>
        <div id="create-account-wrap">
            <p>Not a member?  <asp:HyperLink ID="Link1" runat="server" NavigateUrl="~/Registration.aspx" Text="Create Account" /> </p>
            
        </div>

    
    
      
   
    
    
</body>
</html>
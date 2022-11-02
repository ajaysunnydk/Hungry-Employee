<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Hungry_Employee.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage Hungry Employee</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" />
    <link rel="stylesheet" href="styles/style.css" />
</head>
<script src="styles/style.css"></script>
<body>
    <div id="login-form-wrap1">
        <form id="form1" runat="server">
            Hungry Employee<br />
            <br />
            <table id="Table1" runat="server" height="458px" width="914px" onmouseover="myfunction()">
                <tr>
                    <th>Image</th>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                </tr>

                <tr>
                    <td>
                        <asp:Image ID="Image2" Height="100px" ImageUrl="https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/nxmlubuz0b1qixa29gov" runat="server" />
                    </td>
                    <td>Biriyani</td>
                    <td>
                        <div style="display:flex; align-content:center; width:100px;margin-left:auto; margin-right:auto;" class="container">
                            <input style="padding:5px; width:30px" type="button" onclick="decrementValue()" value="-" />
                            <input  style="margin-left:10px; margin-right:10px; width:50px" type="text" name="quantity" value="0" maxlength="2" max="10" size="1" id="number" />
                            <input style="padding:5px; width:30px" type="button" onclick="incrementValue()" value="+" />
                        </div>
                    </td>
                    <td> <p id="item1price">250</p></td>
                    <td> <p id="item1total">0</p></td>
                </tr>

                <tr>
                    <td>
                        <asp:Image ID="Image3" Height="100px" ImageUrl="https://www.bigbasket.com/media/uploads/p/l/251014_12-thums-up-soft-drink.jpg" runat="server" />
                    </td>
                    <td>Cool Drink</td>
                    <td >
                        <div style="display:flex; align-content:center; width:100px;margin-left:auto; margin-right:auto;" class="container">
                            <input style="padding:5px;width:30px" type="button" onclick="decrementValue2()" value="-" />
                            <input  style="margin-left:10px; margin-right:10px; width:50px" type="text" name="quantity" value="0" maxlength="2" max="10" size="1" id="number2" />
                            <input style="padding:5px;width:30px" type="button" onclick="incrementValue2()" value="+" />
                        </div>
                    </td>
                    <td style="justify-content:center"><p id="item2price">40</p></td>
                    <td style="justify-content:center"><p id="item2total">0</p></td>
                </tr>


                <tr  >
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td id="carttotal">0</td>

                </tr>

            </table>

            
            

            <p style="color:green" id="hiddenid" runat="server" visible="false">a</p>

            
            <asp:Button ID="getordr" runat="server" OnClick="Button1_Click" Text="Get Order Id" />
            <br />
            <br />

            <asp:Button ID="Order" runat="server" OnClick="Checkout_btn" Text="Checkout" />
            <br />
            <br />
            <%--<asp:HiddenField ID="HiddenField1" runat="server" ClientIDMode="Static" />--%>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <input type="hidden" id ="hidd" runat="server" />
            <br />
            <br />
        </form>

    </div>
    <script type="text/javascript">
        function incrementValue() {
            var value = parseInt(document.getElementById('number').value, 10);
            value = isNaN(value) ? 0 : value;
            if (value < 10) {
                value++;
                document.getElementById('number').value = value;
                var price = parseInt(document.getElementById('item1price').innerHTML);
                document.getElementById('item1total').innerHTML = (value * price);
            }
        }
        function decrementValue() {
            var value = parseInt(document.getElementById('number').value, 10);
            value = isNaN(value) ? 0 : value;
            if (value > 0) {
                value--;
                document.getElementById('number').value = value;
                var price = parseInt(document.getElementById('item1price').innerHTML);
                document.getElementById('item1total').innerHTML = (value * price);
            }

        }
        function incrementValue2() {
            var value = parseInt(document.getElementById('number2').value, 10);
            value = isNaN(value) ? 0 : value;
            if (value < 10) {
                value++;
                document.getElementById('number2').value = value;
                var price = parseInt(document.getElementById('item2price').innerHTML);
                document.getElementById('item2total').innerHTML = (value * price);
                
            }
        }
        function decrementValue2() {
            var value = parseInt(document.getElementById('number2').value, 10);
            value = isNaN(value) ? 0 : value;
            if (value > 0) {
                value--;
                document.getElementById('number2').value = value;
                var price = parseInt(document.getElementById('item2price').innerHTML);
                document.getElementById('item2total').innerHTML = (value * price);
                
            }

        }

        function myfunction() {
            var item1 = parseInt(document.getElementById('item1total').innerHTML);
            var item2 = parseInt(document.getElementById('item2total').innerHTML);
            var total = item1 + item2;
            document.getElementById('carttotal').innerHTML = "₹" + total;
            
            document.getElementById('hidd').value = total;

        }

    </script>
</body>
</html>

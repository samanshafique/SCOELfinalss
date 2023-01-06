<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SCOELfinalss.Login" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    
    <title>LOgin Form</title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            font-weight: normal;
            color: #000066;
        }
        .auto-style3 {
            align-items:center;
            width: 73%;
            height: 300px;
            width : 400px;

            /*margin-left: 100px;*/
            /*margin-left: 100px;*/
            background-color:darkgray;
             

        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            font-size: large;
            width: 185px;
            font-style: normal;
            text-align: center;
        }
        .auto-style6 {
            font-size: large;
            width: 185px;
            height: 24px;
            font-style: normal;
            text-align: center;
        }
        .auto-style7 {
            width: 185px;
            height: 18px;
        }
        
        
        .auto-style8 {
            height: 24px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            height: 18px;
        }
        .auto-style12 {
            height: 23px;
            width: 185px;
            font-style: normal;
            text-align: center;
            /*align-content:center;*/
        }
        .auto-style13 {
            font-size: small;
        }
    </style>
</head>
<body >
    <%--style=" justify-content:center; width: 950px; height: 800px">--%>

    <form id="form1" runat="server">
        <div>


 
        <p class="auto-style10">
            &nbsp;</p>
       <center>
           <table class="auto-style3">
            <tr>
                <td class="auto-style12">
                    <h2><strong><em>Login Form</em></strong></h2>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style5"><strong>User Name</strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="usenname" runat="server" OnTextChanged="usenname_TextChanged"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usenname" CssClass="auto-style13" ErrorMessage=" Enter UserName!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Password</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" CssClass="auto-style13" ErrorMessage="Enter Password!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style11">
                    <h5>
                    <asp:Button ID="loginButton" runat="server" OnClick="Button1_Click" Text="Login" Width="100px" BackColor="Black" BorderColor="Black" CssClass="auto-style10" Font-Bold="True" ForeColor="White" Font-Size="Medium" Height="30px" />
                    </h5>
                </td>
            </tr>
        </table>


       </center> 

        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="SCOELfinalss.WebForm1" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <style>
       .button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
        ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 25%;
  background-color: #f1f1f1;+
  position: fixed;
  height: 110%;
  overflow: auto;
            top: 63px;
            left: 10px;
        }
        
           
li a {
  display: block;
  color: #000;
  padding: 5px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #b8caf5;
  color: white;
}

li a:hover:not(.active) {
  background-color: #b8caf5;
  color: white;
}
        .auto-style5 {
            left: 9px;
            top: 73px;
            width: 20%;
             height: 83%;
         }
           /*.auto-style7 {
            font-weight: bold;
            background-color: #6666FF;
        }*/
          .auto-style6 {
              height: 31px;
              background-color: #6699FF;
          }
          </style>
       
</head>
<body>
    <form id="form1" runat="server">
         <center><h1 style="background-color:#5f8eb0; height: 44px; margin-top: 0px;">View User Profile</h1></center>
      
      
        
        <div align="center" style="margin-left: 210px; margin-top: 0px;">
        <div style="margin-top: 0px;" class="auto-style3">
            
            <h2 class="auto-style6"><strong>Members Card</strong></h2>
            
            <br />
                              
        </div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#5f8eb0" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style7" ForeColor="White" Width="680px" Height="287px" style="margin-top: 0px">
                <AlternatingRowStyle BackColor="#b8caf5" />
                <HeaderStyle BackColor="Black" />
            </asp:GridView>
            </div>
    </form>
</body>
</html>

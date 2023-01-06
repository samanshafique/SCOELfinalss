<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="SCOELfinalss.Profile" %>


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
  background-color: #f1f1f1;
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
         .auto-style67 {
             font-weight: bold;
         }
         .auto-style68 {
             width: 244px;
         }
         .auto-style69 {
             width: 174px;
         }
         .auto-style70 {
             width: 174px;
             height: 41px;
         }
         .auto-style71 {
             width: 244px;
             height: 41px;
         }
         .auto-style72 {
             background-color: #FFFFFF;
             height: 262px;
             width: 514px;
         }
         .auto-style73 {
             margin-right: 0px;
         }
        </style>
  

</head>
<body>
    <form id="form1" runat="server">
        
         
      
        
        
        <div align="center" style="margin-left: 210px; margin-top: 0px;">
        <div style="margin-top: 0px;" class="auto-style3">
            
            <table class="auto-style72">
                <tr>
                    <td class="auto-style70">
                        <strong>
                        <asp:Label ID="Label1" runat="server" Text="UserID"></asp:Label>
                        </strong></td>
                    <td class="auto-style71">

                        <asp:TextBox ID="TxtBid" runat="server" Height="22px" Width="128px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a><asp:Button class="button2" style="background-color:#80b3cf;color:white;" ID="Button4" runat="server" Text="Get" OnClick="Button4_Click" Width="52px" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    </td>
                    </tr>
                <tr>
                    <td class="auto-style69" ><strong>
                        <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
                        </strong></td>
                    <td class="auto-style68">
                        <asp:TextBox ID="TxtBname" runat="server" Height="22px" Width="133px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style70" ><strong>
                        <asp:Label ID="Label3" runat="server" Text="Image"></asp:Label>
                        </strong></td>
                    <td class="auto-style71">
                        <asp:FileUpload ID="FileUpload1" runat="server" />  
<asp:Button ID="uplbtn" runat="server" Text="Upload" onclick="uplbtn_Click"/>  
<br />  
<asp:Image ID="Image1" runat="server" CssClass="auto-style73" Height="31px" Width="37px" />  
                        <br />
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style69" ><strong>
                        <asp:Label ID="Label4" runat="server" Text="SocialMediaLinks"></asp:Label>
                        </strong></td>
                    <td class="auto-style68" >
                        
                        <asp:TextBox ID="txtmail" runat="server" Height="22px" Width="133px"></asp:TextBox>
                        
                        <br />
                        
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style69" >
                        &nbsp;</td>
                    <td class="auto-style68" >                     
                        <br />
                        <strong><a><asp:Button class="button2" style="background-color:#80b3cf;color:white;" ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" CssClass="auto-style67" Height="26px" Width="59px" /></a>
                        </strong>&nbsp;
            <strong>
            <asp:Button class="button2" style="background-color:#80b3cf;color:white;" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" CssClass="auto-style67" Height="26px" Width="59px" />
                        </strong>&nbsp;<strong><asp:Button class="button2" style="background-color:#80b3cf;color:white;" ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" OnClientClick="return confirm('Are you sure you want to delete this?');" CssClass="auto-style67" Height="26px" Width="61px" />
                        
                        <br />
                        <br />
                        
                        <br />
                        
                        </strong>
                        
                    </td>
                        
                </tr>
                </table>
            
            <br />
                              
        </div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#5f8eb0" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style7" ForeColor="White" Width="715px" style="margin-top: 21px" Height="204px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#b8caf5" />
                <HeaderStyle BackColor="Black" />
            </asp:GridView>
            </div>
        
    </form>
</body>
</html>


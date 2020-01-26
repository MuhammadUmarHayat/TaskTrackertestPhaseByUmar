<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="TaskTrackerTestPhase.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Task Tracker </title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style5 {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="Container">
            <div class="Header">

                <h1 class="auto-style1"><strong>Forget Password

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RegisterationPage.aspx" CssClass="auto-style5">Register</asp:HyperLink>

</div>
           
           <div style="background-color:burlywood">




               <table align="center">
                   <tr>
                       <td class="auto-style1" colspan="3">&nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Enter User ID </td>
                       <td>
                           <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
                       </td>
                       <td>
                           <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" />


                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Secreate Question</td>
                       <td>
                           <asp:Label ID="Label1" runat="server" style="font-weight: 700"></asp:Label>
                       </td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Secrete Answer</td>
                       <td>
                           <asp:TextBox ID="txtSecAnswer" runat="server"></asp:TextBox>
                       </td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">&nbsp;</td>
                       <td>
                           &nbsp;</td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Enter Password</td>
                       <td>
                           <asp:TextBox ID="txtPw1" runat="server"></asp:TextBox>
                       </td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Enter Passwrod Again</td>
                       <td>
                           <asp:TextBox ID="txtPw2" runat="server"></asp:TextBox>
                       </td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">&nbsp;</td>
                       <td>
                           <asp:Button ID="Button3" runat="server" Text="Save Changes" Width="127px" OnClick="Button3_Click" />


                       </td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">&nbsp;</td>
                       <td>
                           <asp:Label ID="Label2" runat="server" style="font-weight: 700"></asp:Label>
                       </td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">&nbsp;</td>
                       <td>
                           &nbsp;</td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">&nbsp;</td>
                       <td>
                           &nbsp;</td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">&nbsp;</td>
                       <td>
                           &nbsp;</td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">&nbsp;</td>
                       <td>
                           &nbsp;</td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">&nbsp;</td>
                       <td>
                           &nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
               </table>




           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>

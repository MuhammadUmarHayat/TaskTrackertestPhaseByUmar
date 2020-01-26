﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TaskTrackerTestPhase.Home" %>

<!DOCTYPE html>
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

                <h1 class="auto-style1"><strong>Home 

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RegisterationPage.aspx" CssClass="auto-style5">Register</asp:HyperLink>

&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/RegisterationPage.aspx" CssClass="auto-style5">Forget Password</asp:HyperLink>

</div>
           
           <div style="background-color:burlywood">




            




               &nbsp;&nbsp;&nbsp;&nbsp;
               <br />
               Enter User ID&nbsp;
               <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
               <br />
               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" Width="100px" />
               <br />
               <br />
               <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                   <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                   <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                   <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                   <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                   <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                   <SortedAscendingCellStyle BackColor="#FFF1D4" />
                   <SortedAscendingHeaderStyle BackColor="#B95C30" />
                   <SortedDescendingCellStyle BackColor="#F1E5CE" />
                   <SortedDescendingHeaderStyle BackColor="#93451F" />
               </asp:GridView>
               <br />
               <br />




            




           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>

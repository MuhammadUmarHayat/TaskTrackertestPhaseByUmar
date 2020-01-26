<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TaskTrackerTestPhase.Login" %>

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

                <h1 class="auto-style1"><strong>Login

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/UserRegistration.aspx" CssClass="auto-style5">Register</asp:HyperLink>

&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ForgetPassword.aspx" CssClass="auto-style5">Forget Password</asp:HyperLink>

</div>
           
           <div style="background-color:burlywood">




            




               Enter User ID&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               <br />
               Enter password&nbsp;
               <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
               <br />
               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="100px" />
               <br />
               <br />
               <br />
               <br />




            




           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>

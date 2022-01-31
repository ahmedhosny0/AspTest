<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            background-color: #CCCCCC;
        }
        .auto-style6 {
            text-align: left;
            height: 50px;
            background-color: #0066CC;
        }
        .auto-style7 {
            width: 490px;
            background-color: #CCCCCC;
        }
        .auto-style8 {
            background-color: #CCCCCC;
            height: 192px;
        }
        .auto-style9 {
            text-align: left;
            height: 50px;
            width: 95px;
            background-color: #0066CC;
            color: #FFFFFF;
        }
        .auto-style12 {
            text-align: left;
            height: 50px;
            width: 41px;
            background-color: #0066CC;
        }
        .auto-style14 {
            text-align: right;
            background-color: #0066CC;
        }
        .auto-style15 {
            font-size: large;
            font-weight: bold;
            padding:10px;
            background-color: #FFCC00;
            border-radius:15px;
        }
        .auto-style19 {
            text-align: left;
            height: 50px;
            width: 135px;
            background-color: #0066CC;
        }
        .auto-style20 {
            margin-left: 2px;
            font-size: medium;
            border-radius:25px;
            padding-left:15px;
            color: #FFFFFF;
        }
        .auto-style21 {
            margin-left: 2px;
            font-size: large;
            border-radius:25px;
            padding-left:15px;
            color: #FFFFFF;
        }
        table , th, td {
            border-spacing : 0px;
            
        }

        .auto-style23 {
            text-align: left;
            height: 50px;
            width: 41px;
            background-color: #0066CC;
        }
        .auto-style25 {
            text-align: center;
            background-color: #0066CC;
            
        }

        .auto-style26 {
            color: #FFFFFF;
        }
        .auto-style27 {
            background-color: #CCCCCC;
            height: 180px;
        }
        .auto-style28 {
            color: #FFFF00;
        }

        .auto-style29 {
            margin-left: 2px;
            font-size: large;
            border-radius: 25px;
            padding-left: 15px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style7" rowspan="12">&nbsp;</td>
                    <td class="auto-style8" colspan="3"></td>
                    <td class="auto-style3" rowspan="12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25" colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25" colspan="3">
                        <h1 class="auto-style26">Sign In</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25" colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25" colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style21" Text="Username"></asp:Label>
                        </strong></td>
                    <td class="auto-style23">
                        <asp:TextBox ID="tbuname" runat="server" Height="35px" Width="230px" CssClass="auto-style29"></asp:TextBox>
                    </td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style21" Text="Password"></asp:Label>
                        </strong></td>
                    <td class="auto-style12">
                        <asp:TextBox ID="tbpassword" runat="server" Height="35px" Width="230px" CssClass="auto-style29" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <strong>
                        <asp:Button ID="btnsignin" runat="server" Text="Sign In" CssClass="auto-style15" OnClick="btnsignin_Click" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="3">
                        <asp:Label ID="Label3" runat="server" Text="Remember Me" CssClass="auto-style20"></asp:Label>
                        <asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style26" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="3"><span class="auto-style26">not a member ? </span> <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx" CssClass="auto-style28">Sign Up Here</asp:HyperLink>
                        <span class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27" colspan="3"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

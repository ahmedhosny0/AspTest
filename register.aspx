<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>
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
            height: 741px;
            border:inherit;
        }
        .auto-style3 {
            background-color: #CCCCCC;
            
        }
        .auto-style4 {
            height: 70px;
            background-color: #CCCCCC;
            
        }
        .auto-style9 {
            text-align: left;
            width: 45px;
            height: 50px;
            background-color: #0066CC;
        }
        .auto-style10 {
            text-align: left;
            height: 50px;
            width: 180px;
            background-color: #0066CC;
        }
        .auto-style12 {
            text-align: left;
            width: 130px;
            height: 50px;
            padding-left:50px;
            background-color: #0066CC;
        }
        .auto-style13 {
            margin-left: 2px;
            font-size: large;
            border-radius:25px;
            padding-left:15px;
        }
        .auto-style14 {
            color: #000000;
            font-size: large;
        }
        .auto-style15 {
            text-align: center;
            height: 50px;
            width: 70px;
            background-color: #0066CC;
            
        }
        .auto-style16 {
            color: #000000;
        }
        .auto-style17 {
            font-size: large;
            font-weight: bold;
            padding:10px;
            background-color: #FFCC00;
            border-radius:15px;
        }
        .auto-style18 {
            text-align: left;
            width: 45px;
            height: 50px;
            background-color: #0066CC;
        }
        .auto-style20 {
            text-align: left;
            height: 50px;
            width: 180px;
            background-color: #0066CC;
        }
        .auto-style21 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style22 {
            text-align: left;
            width: 130px;
            height: 50px;
            padding-left: 50px;
            background-color: #0066CC;
            color: #FFFFFF;
        }
        .auto-style24 {
            font-size: large;
            border-radius:25px;
            padding-left: 15px;
        }

        table , th, td {
            border-spacing : 0px;
            
        }
        .auto-style25 {
            text-align: center;
            padding-left: 50px;
            background-color: #0066CC;
            color: #FFFFFF;
            border-radius: 25px 25px 0 0;
        }
        .auto-style26 {
            height: 51px;
            background-color: #CCCCCC;
        }
    </style>
</head>
<body style="height: 655px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3" rowspan="12">&nbsp;</td>
                    <td class="auto-style4" colspan="3">
                        
                    </td>
                    <td class="auto-style3" rowspan="12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25" colspan="3">
                        <h1>Sign Up</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style21" Text="FirstName"></asp:Label>
                        </strong></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TxtFname" runat="server" CssClass="auto-style13" Height="35px" Width="230px"></asp:TextBox>
                    </td>
                    <td class="auto-style20"><span class="auto-style16">&nbsp;</span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtFname" CssClass="auto-style14" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style21" Text="MiddleName"></asp:Label>
                        </strong></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TxtMname" runat="server" Height="35px" Width="230px" CssClass="auto-style24"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtMname" CssClass="auto-style14" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style21" Text="LastName"></asp:Label>
                        </strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TxtLname" runat="server" Height="35px" Width="230px" CssClass="auto-style24"></asp:TextBox>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style22"><strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style21" Text="Email"></asp:Label>
                        </strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TxtEmail" runat="server" Height="35px" Width="230px" CssClass="auto-style24"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Email Not Valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style16"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22"><strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style21" Text="Password"></asp:Label>
                        </strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TxtPassword" runat="server" Height="35px" Width="230px" CssClass="auto-style24" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style22"><strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style21" Text="Confirm Password"></asp:Label>
                        </strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TxtRePassword" runat="server" Height="35px" Width="230px" CssClass="auto-style24" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style10" colspan="0">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPassword" ControlToValidate="TxtRePassword" CssClass="auto-style16" ErrorMessage="Password Not Match"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="3">
                        <strong>
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="auto-style17" OnClick="btnsubmit_Click" />
                        </strong>
                        <asp:Button ID="btnback" runat="server" CssClass="auto-style17" Text="Back" CausesValidation="False" OnClick="btnback_Click"  />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TopSoft %>" SelectCommand="SELECT * FROM [userinfo]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26" colspan="3"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

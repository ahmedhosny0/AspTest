<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p >
         
        <label id="text1"><strong><span class="auto-style3">Arabicname</span><span class="auto-style3" ><asp:TextBox ID="TxtName" runat="server" class="input1"></asp:TextBox></span></strong></label></p>
    <p>
        <label ><strong><span class="auto-style3">Englishname</span><span class="auto-style3"><asp:TextBox ID="TxtEname" runat="server" class="input1"></asp:TextBox></span></strong></label></p>
    <p>
        <label id="text2"><strong><span class="auto-style3">Title</span><span class="auto-style3"><asp:TextBox ID="TxtTitle" runat="server" class="input1"></asp:TextBox></span></strong></label></p>
    <p>
        <label id="text3"><strong><span class="auto-style3">Description</span><span class="auto-style3"><asp:TextBox ID="TxtDesc" runat="server" class="input1"></asp:TextBox></span></strong></label></p>
     <p>
        <label id="text6"><strong><span class="auto-style3">Category</span><span class="auto-style3">
    <asp:DropDownList class="auto-style3" ID="DropListCat" runat="server" AppendDataBoundItems="true" DataSourceID="Group" DataTextField="Arabicname" DataValueField="Serial" Width="157px">
                <asp:ListItem Value="Choose a Division" Text="---Select Group Name ---"></asp:ListItem>
         </asp:DropDownList>
         <asp:SqlDataSource ID="Group" runat="server" ConnectionString="<%$ ConnectionStrings:Erp %>" SelectCommand="SELECT DISTINCT [Serial], [ArabicName] FROM [GroupCode]"></asp:SqlDataSource>
         </span></strong></label>
    </p>
    <p>
        <label id="text4"><strong><span class="auto-style3">Unit Name</span><span class="auto-style3">
         <asp:DropDownList class="auto-style3" ID="DropListUnit" AppendDataBoundItems="true" runat="server" DataSourceID="unit" DataTextField="Arabicname" DataValueField="Serial" >
                <asp:ListItem Value="Choose a Division" Text="---Select Unit ---"></asp:ListItem>
              </asp:DropDownList>

        <asp:SqlDataSource ID="unit" runat="server" ConnectionString="<%$ ConnectionStrings:Erp %>" SelectCommand="SELECT [Serial], [ArabicName] FROM [UnitCode]"></asp:SqlDataSource>
       </span></strong></label>
    </p>

    <p>
         <label id="text5"><strong><span class="auto-style3">Store</span><span class="auto-style3">
         <asp:DropDownList  class="auto-style3" ID="DropListStore" AppendDataBoundItems="true" runat="server" DataSourceID="Store" DataTextField="Arabicname" DataValueField="Serial" >
            <asp:ListItem Value="Choose a Division" Text="---Select Store ---"></asp:ListItem>
        </asp:DropDownList>

         <asp:SqlDataSource ID="Store" runat="server" ConnectionString="<%$ ConnectionStrings:Erp %>" SelectCommand="SELECT DISTINCT [Serial], [ArabicName] FROM [StoreCode]">

         </asp:SqlDataSource>
       </span>
         </strong></label>
    </p>
    <p>
        <label id="text14"><strong><span class="auto-style3">Purchase price</span><span class="auto-style3"><asp:TextBox ID="TxtPurchasePrice" runat="server" class="input1"></asp:TextBox></span></strong></label></p>
    <p>
        <label id="text15"><strong><span class="auto-style3">Sales price</span><span class="auto-style3"><asp:TextBox ID="TxtSalePrice" runat="server" class="input1"></asp:TextBox></span></strong></label></p>
    <p>
        <label id="text16"><strong><span class="auto-style3">Quantity</span><span class="auto-style3"><asp:TextBox ID="TxtCount" runat="server" class="input1"></asp:TextBox></span></strong></label></p>
     <p>

 
         <strong>
        <asp:Label ID="Msg" runat="server" Text="" ForeColor="Green" ></asp:Label>

         <asp:Button class="ok" ID="btnsubmit0" runat="server" Text="Save" OnClick="btnsubmit_Click" />
         </strong>

 

     
         
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Erp %>" SelectCommand="SELECT * FROM [ItemCode]"></asp:SqlDataSource>


 
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InvoiceSales.aspx.cs" Inherits="InvoiceSales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <label ><strong><span class="auto-style3">Product ID</span><span class="auto-style3"><asp:TextBox ID="TxtId" runat="server" class="auto-style3"  readonly="true"></asp:TextBox></span></strong></label></p>
<p>
         <label id="text5"><strong><span class="auto-style3">Store</span><span class="auto-style3">
         <asp:DropDownList  class="auto-style3" ID="DropListStore" AppendDataBoundItems="true" runat="server" DataSourceID="Store" DataTextField="Arabicname" DataValueField="Serial" >
            <asp:ListItem >"---Select Store ---"></asp:ListItem>
        </asp:DropDownList>

         <asp:SqlDataSource ID="Store" runat="server" ConnectionString="<%$ ConnectionStrings:TopSoft %>" SelectCommand="SELECT [Serial], [ArabicName] FROM [StoreCode]">

         </asp:SqlDataSource>
       </span>
         </strong></label>
    </p>
    <p>
        <label id="text6"><strong><span class="auto-style3">Category</span><span class="auto-style3">
    <asp:DropDownList class="auto-style3" ID="DropListCat" runat="server" AppendDataBoundItems="true" DataSourceID="Group" DataTextField="Arabicname" DataValueField="Serial" Width="157px">
                <asp:ListItem>"---Select Group Name ---"></asp:ListItem>
         </asp:DropDownList>
         <asp:SqlDataSource ID="Group" runat="server" ConnectionString="<%$ ConnectionStrings:TopSoft %>" SelectCommand="SELECT [Serial], [ArabicName] FROM [GroupCode]"></asp:SqlDataSource>
         </span></strong></label> 
   </p>
<p >
 <label id="text8"><strong><span class="auto-style3">Product Name</span><span class="auto-style3">
         <asp:DropDownList class="auto-style3" ID="DropListItem" AppendDataBoundItems="True" runat="server" DataSourceID="Item" Width="300px" DataTextField="ArabicName" DataValueField="Serial" >
                <asp:ListItem >"---Select Product ---"></asp:ListItem>
              </asp:DropDownList>

        <asp:SqlDataSource ID="Item" runat="server" ConnectionString="<%$ ConnectionStrings:TopSoft %>" SelectCommand="SELECT [Serial], [ArabicName] FROM [ItemCode]"></asp:SqlDataSource>
       </span></strong></label>
       </p>
    <p>
        <label id="text7"><strong><span class="auto-style3">Unit Name</span><span class="auto-style3">
         <asp:DropDownList class="auto-style3" ID="DropListUnit" AppendDataBoundItems="true" runat="server" DataSourceID="unit" DataTextField="Arabicname" DataValueField="Serial" >
                <asp:ListItem >"---Select Unit ---"></asp:ListItem>
              </asp:DropDownList>

        <asp:SqlDataSource ID="unit" runat="server" ConnectionString="<%$ ConnectionStrings:TopSoft %>" SelectCommand="SELECT [Serial], [ArabicName] FROM [UnitCode]"></asp:SqlDataSource>
       </span></strong></label>
        </p>
    <p>
        <label ><strong><span class="auto-style3">Quantity</span><span class="auto-style3"><asp:TextBox ID="TxtQuantity" runat="server" class="input1" ></asp:TextBox></span></strong></label></p>
    <p>
        <label id="text2"><strong><span class="auto-style3">Price</span><span class="auto-style3"><asp:TextBox ID="TxtPrice" runat="server" class="input1" autopostback="true" OnTextChanged="TxtPrice_TextChanged" ></asp:TextBox></span></strong></label></p>
    <p>
        <label id="text3"><strong><span class="auto-style3">Total</span><span class="auto-style3"><asp:TextBox ID="TxtTotal" runat="server" class="input1"  readonly="true" AutoCompleteType="Enabled"></asp:TextBox></span></strong></label></p>
         <strong>
              <asp:Label ID="Msg" runat="server" Text="" ForeColor="Green" ></asp:Label>
         <asp:Button class="ok" ID="btnsubmit" runat="server" Text="Save" OnClick="btnsubmit_Click" />
         </strong>
</asp:Content>


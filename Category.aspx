<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

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
        <label id="text4"><strong><span class="auto-style3">Description</span><span class="auto-style3"><asp:TextBox ID="TxtDesc" runat="server" class="input1"></asp:TextBox></span></strong></label></p>
     <p>
     
         
         <strong>
          <asp:Label ID="Msg" runat="server" Text="" ForeColor="Green"></asp:Label>

         <asp:Button class="ok" ID="btnsubmit" runat="server" Text="Save" OnClick="btnsubmit_Click" />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stock %>" SelectCommand="SELECT * FROM [GroupCode]"></asp:SqlDataSource>
         </strong>

 

     
         

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Store.aspx.cs" Inherits="Store" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="c">
      <p>

        <label id="text1"><strong><span class="auto-style3">Arabicname</span><span class="auto-style3"><asp:TextBox ID="TxtName" runat="server" class="input1"></asp:TextBox></span></strong></label>
    </p>
    <p>
        <label><strong><span class="auto-style3">Englishname</span><span class="auto-style3"><asp:TextBox ID="TxtEname" runat="server" class="input1"></asp:TextBox></span></strong></label>
    </p>
    <p>
        <label id="text2"><strong><span class="auto-style3">Title</span><span class="auto-style3"><asp:TextBox ID="TxtTitle" runat="server" class="input1"></asp:TextBox></span></strong></label>
    </p>
    <p>
        <label id="text4"><strong><span class="auto-style3">Description</span><span class="auto-style3"><asp:TextBox ID="TxtDesc" runat="server" class="input1"></asp:TextBox></span></strong></label>
    </p>
    <p>
        <label id="text10"><strong><span class="auto-style3">Area</span><span class="auto-style3"><asp:TextBox ID="TxtArea" runat="server" class="input1"></asp:TextBox></span></strong></label>
    </p>
    <p>
        <label id="text12"><strong><span class="auto-style3">Address</span><span class="auto-style3"><asp:TextBox ID="TxtAddress" runat="server" class="input1"></asp:TextBox></span></strong></label>
    </p>
    <label id="text11"><strong><span class="auto-style3">Number of Lanes</span><span class="auto-style3" id="TxtNumOfLans"><asp:TextBox ID="TxtNumOfLeans" runat="server" class="input1"></asp:TextBox></span></strong></label>
    <p>
        <label id="text5"><strong><span class="auto-style3">StoreKeeper</span><span class="auto-style3"><asp:TextBox ID="TxtKeeper" runat="server" class="input1"></asp:TextBox></span></strong></label>
    </p>
    <p>
        <label id="text6"><strong><span class="auto-style3">Telephone1</span><span class="auto-style3"><asp:TextBox ID="TxtTel1" runat="server" class="input1"></asp:TextBox></span></strong></label>
    </p>
    <p>
        <label id="text7"><strong><span class="auto-style3">Telephone2</span><span class="auto-style3"><asp:TextBox ID="TxtTel2" runat="server" class="input1"></asp:TextBox></span></strong></label>
    </p>
    <p>
        <label id="text8"><strong><span class="auto-style3">Telephone3</span><span class="auto-style3"><asp:TextBox ID="TxtTel3" runat="server" class="input1"></asp:TextBox></span></strong></label>
    </p>
    <p>


        <strong>
            <asp:Label ID="Msg" runat="server" Text=""></asp:Label>

            <asp:Button class="ok" ID="btnsubmit" runat="server" Text="Save" OnClick="btnsubmit_Click" />

            <asp:Button class="back" ID="btnback" runat="server" Text="Back" OnClick="btnsubmit_Click" />
        </strong>

        </div>



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stock %>" SelectCommand="SELECT * FROM [StoreCode]"></asp:SqlDataSource>
</asp:Content>


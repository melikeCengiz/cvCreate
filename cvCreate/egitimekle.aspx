<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="egitimekle.aspx.cs" Inherits="cvCreate.egitimekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
       <div class="form-group">
           <div>
           <div>
               <asp:Label ID="Label1" runat="server" Text="Başlık"></asp:Label><br />
               <asp:TextBox ID="Textbaslik" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label ID="Label2" runat="server" Text="Alt Başlık"></asp:Label><br />
               <asp:TextBox ID="Textaltbaslik" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label ID="Label3" runat="server" Text="Açıklama"></asp:Label><br />
               <asp:TextBox ID="Textaciklama" runat="server" CssClass="form-control" Height="100px"></asp:TextBox>
           </div>
           <br />
               <div>
               <asp:Label ID="Label5" runat="server" Text="Genel Not"></asp:Label><br />
               <asp:TextBox ID="Textnot" runat="server" CssClass="form-control"></asp:TextBox>
           </div>      
               <br />
           <div>
               <asp:Label ID="Label4" runat="server" Text="Tarih"></asp:Label><br />
               <asp:TextBox ID="Texttarih" runat="server" CssClass="form-control"></asp:TextBox>
           </div>           
      
           <br />
           <asp:Button ID="btnekle" runat="server" Text="Ekle" CssClass="btn btn-primary" OnClick="btnekle_Click" />
       </div>
     </div>
   </form>
</asp:Content>

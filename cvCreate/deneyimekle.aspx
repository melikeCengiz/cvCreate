﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="deneyimekle.aspx.cs" Inherits="cvCreate.deneyimekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
       <div class="form-group">
           <div>
           <div>
               <asp:Label ID="Label1" runat="server" Text="Başlık"></asp:Label><br />
               <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label ID="Label2" runat="server" Text="Alt Başlık"></asp:Label><br />
               <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label ID="Label3" runat="server" Text="Açıklama"></asp:Label><br />
               <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Height="100px"></asp:TextBox>
           </div>
           <br />
           <div>
               <asp:Label ID="Label4" runat="server" Text="Tarih"></asp:Label><br />
               <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
           </div>           
      
           <br />
           <asp:Button ID="Button1" runat="server" Text="Ekle" CssClass="btn btn-primary" OnClick="Button1_Click" />
       </div>
     </div>
   </form>
</asp:Content>

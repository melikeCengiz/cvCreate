﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="konferansEkle.aspx.cs" Inherits="cvCreate.konferansEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
       <div class="form-group">          
     <div>
               <asp:Label ID="Label1" runat="server" Text="Ödüller"></asp:Label><br />
               <asp:TextBox ID="txtodul" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           <br />
           <asp:Button ID="Button1" runat="server" Text="Ekle" CssClass="btn btn-primary" OnClick="Button1_Click"/>
     </div>
   </form>



</asp:Content>

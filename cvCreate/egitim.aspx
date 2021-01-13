<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="egitim.aspx.cs" Inherits="cvCreate.egitim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Başlık</th>
            <th>Alt başlık</th>
            <th>Açıklama</th>
            <th>Genel Not</th>
            <th>Tarih</th>
            <th>İŞLEMLER</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("ID") %></th>
                        <td><%# Eval("baslik") %></td>
                        <td><%# Eval("altBaslik") %></td>
                        <td><%# Eval("aciklama") %></td>
                        <td><%# Eval("genelNot") %></td>
                        <td><%# Eval("tarih") %></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "egitimsil.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%# "egitimguncelle.aspx?ID=" + Eval("ID") %>'  ID="HyperLink2" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                        </td>                         
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
        <asp:HyperLink NavigateUrl="egitimekle.aspx" runat="server" CssClass="btn btn-info">Deneyim Ekle</asp:HyperLink>
    </form>








</asp:Content>

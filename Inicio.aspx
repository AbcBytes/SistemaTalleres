<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="SistemaTalleres.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <h2>Bienvenido al sistema de talleres, si usted es un usuario nuevo, haga clicl en nuevo usuario, si ya esta registrado y desea hacer cambios, haga click en usuario registrado</h2></p>
        <asp:Button ID="btnInicioNuevoUsuario" runat="server" PostBackUrl="~/Inscribir.aspx" />
</asp:Content>

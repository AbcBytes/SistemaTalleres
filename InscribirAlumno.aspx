<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="InscribirAlumno.aspx.cs" Inherits="SistemaTalleres.InscribirAlumno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 273px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>Rut:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtRut" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>Nombre:</td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Taller:</td>
            <td class="auto-style1">
                <asp:DropDownList ID="ddlTaller" runat="server">
                </asp:DropDownList>
            </td>
            <td>Fecha:</td>
            <td>
                <asp:TextBox ID="txtFecha" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="btnInscribir" runat="server" OnClick="btnInscribir_Click" Text="Inscribir" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
              <ItemTemplate>
            <table>
                <tr>
                    <td>Taller:</td>
                    <td>Fecha Inscripcion:</td>
                    <td>Dia:</td>
                    <td>Descripcion:</td>
                 </tr>
                <tr>
                    <td>
                  <asp:Label ID="lbl_Nombre" 
                    runat="server" 
                    Text='<%# Eval("taller.nombreTaller") %>' >
                  </asp:Label>
                    </td>
                    
                    <td>
                  <asp:Label ID="lbl_fecha" 
                    runat="server" 
                    Text='<%# Eval("fechaInscripcion") %>' >
                  </asp:Label>
                    </td>

                    <td>
                <asp:Label ID="lbl_dia" 
                runat="server" 
                Text='<%# Eval("taller.diaTaller") %>' >
              </asp:Label>
                    </td>

                    <td>
                <asp:Label ID="lbl_desc" 
                runat="server" 
                Text='<%# Eval("taller.descripcionTaller") %>' >
              </asp:Label>
                    </td>
                </tr>
                </table>
</ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inscribir.aspx.cs" Inherits="SistemaTalleres.IngresoDatos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td class="auto-style1">Inscripcion de Alumnos</td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" Width="479px">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>Nombres:</td>
                                <td>Apellido Paterno:</td>
                                <td>Rut:</td>
                                <td>Curso:</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_Nombre"
                                        runat="server"
                                        Text='<%# Eval("Nombres") %>'>
                                    </asp:Label>
                                </td>

                                <td>
                                    <asp:Label ID="lbl_ApellidoPaterno"
                                        runat="server"
                                        Text='<%# Eval("ApellidoPaterno") %>'>
                                    </asp:Label>
                                </td>

                                <td>
                                    <asp:Label ID="lbl_Rut"
                                        runat="server"
                                        Text='<%# Eval("Rut") %>'>
                                    </asp:Label>
                                </td>

                                <td>
                                    <asp:Label ID="lbl_curso"
                                        runat="server"
                                        Text='<%# Eval("Curso") %>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <a href="InscribirAlumno.aspx?rutAlumno=<%# Eval("Rut") %>">Inscribir</a>     
                                    <a href="EliminarAlumno.aspx?rutAlumno=<%# Eval("Rut") %>">Eliminar</a></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FichaProfesor.aspx.cs" Inherits="SistemaTalleres.FichaProfesor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Panel ID="pnlDatosProfesor" runat="server">
        Ingresar Datos de Nuevo Profesor:&nbsp;<br />
        <br />
        <table style="width: 55%;">
            <tr>
                <td class="style1">Id:</td>
                <td class="style3">
                    <asp:TextBox ID="txtIdProfesor" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtIdProfesor" ErrorMessage="Debe ingresar un ID">(*) Obligatorio</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtIdProfesor" ErrorMessage="Debe ingresar un ID" MaximumValue="100" MinimumValue="0" Type="Integer">(*) Obligatorio</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lblRutProfesor" runat="server" Text="Rut Profesor:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtRutProfesor" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRutProfesor" ErrorMessage="Debe ingresar el Rut">(*) Obligatorio</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lblNombresProfesor" runat="server" Text="Nombres:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtNombresProfesor" runat="server" Width="253px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombresProfesor" ErrorMessage="Debe ingresar los Nombres">(*) Obligatorio</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lblApellidoPaterno" runat="server" Text="Apellido Paterno:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtApellidoPaternoProfesor" runat="server" Width="251px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtApellidoPaternoProfesor" ErrorMessage="Debe ingresar el Apellido">(*) Obligatorio</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lblApellidoMaterno" runat="server" Text="Apellido Materno:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtApellidoMaternoProfesor" runat="server" Width="252px"></asp:TextBox>
                </td>
                <td class="style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="style1">&nbsp;</td>
                <td class="style3">
                    <asp:Button ID="btnIngresarProfesor" runat="server" onclick="btnIngresarProfesor_Click" Text="Agregar" Width="128px" />
                </td>
                <td class="style3">&nbsp;</td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp; &nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Panel>
    <br />
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
            <table>
                <tr>
                    <td>Nombres:</td>
                    <td>Apellido Paterno:</td>
                    <td>Rut:</td>
                 </tr>
                <tr>
                    <td>
                  <asp:Label ID="lbl_Nombre" 
                    runat="server" 
                    Text='<%# Eval("Nombres") %>' >
                  </asp:Label>
                    </td>
                    
                    <td>
                  <asp:Label ID="lbl_ApellidoMaterno" 
                    runat="server" 
                    Text='<%# Eval("ApellidoPaterno") %>' Enabled="True">
                  </asp:Label>
                    </td>

                    <td>
                <asp:Label ID="lbl_Rut" 
                runat="server" 
                Text='<%# Eval("Rut") %>' >
              </asp:Label>
                    </td>
                </tr>
                </table>
</ItemTemplate>
        </asp:DataList>
        
    </asp:Panel>
    <br />
</asp:Content>

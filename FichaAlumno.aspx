<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FichaAlumno.aspx.cs" Inherits="SistemaTalleres.FichaAlumno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
        .style2
        {
            height: 23px;
            width: 224px;
        }
        .style3
        {
            width: 224px;
        }
        .style4
        {
            height: 23px;
            width: 532px;
        }
        .style5
        {
            width: 532px;
        }
        .style6
        {
            width: 224px;
            height: 26px;
        }
        .style7
        {
            width: 532px;
            height: 26px;
        }
        .style8
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
<asp:Panel ID="pnlDatosAlumnos" runat="server">
    Ingrsar datos de nuevo ALUMNO:</asp:Panel>
    <table style="width: 100%;">
        <tr>
            <td class="style2">
                id:</td>
            <td class="style4">
                
                <asp:TextBox ID="txtIdAlumno" runat="server" Enabled="False"></asp:TextBox>
                
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblRutAlumno" runat="server" Text="RUT:"></asp:Label>
            </td>
            <td class="style4">
                
                <asp:TextBox ID="txtRutAlumno" runat="server"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="valRutAlumno" runat="server" 
                    ControlToValidate="txtRutAlumno" ErrorMessage="Debe inngresar un rut valido" 
                    ForeColor="Red">(*) Obligatorio</asp:RequiredFieldValidator>
                
            </td>
            <td class="style1">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style3">
               <asp:Label ID="lblNombreAlumno" runat="server" Text="Nombres:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="valNombreAlumno" runat="server" 
                    ControlToValidate="txtNombres" ErrorMessage="Debe ingresar un texto" 
                    ForeColor="Red" Operator="DataTypeCheck">(*) Obligatorio</asp:CompareValidator>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="lblApePaterno" runat="server" Text="Apellido Paterno:"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtApePaterno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ValAppaterno" runat="server" ErrorMessage="Debe ingresar su Apellido Paterno" ForeColor="Red" ControlToValidate="txtApePaterno">(*) Obligatorio</asp:RequiredFieldValidator>
            </td>
            <td class="style8">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblApeMaterno" runat="server" Text="Apellido Materno:"></asp:Label>
            <td class="style5">
                <asp:TextBox ID="txtApeMaterno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Valapellidomaterno" runat="server" Enabled="False" ErrorMessage="Debe ingresar su Apellido Materno" ForeColor="Red" ControlToValidate="txtApeMaterno">(*) Obligatorio</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>

        <tr>
            <td class="style3">
                &nbsp;<td class="style5">
    <asp:Button ID="btnIngresarAlumno" runat="server" Text="Agregar" 
        onclick="btnIngresarAlumno_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>

    </table>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList1" runat="server">
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
                    Text='<%# Eval("Nombres") %>' >
                  </asp:Label>
                    </td>
                    
                    <td>
                  <asp:Label ID="lbl_ApellidoPaterno" 
                    runat="server" 
                    Text='<%# Eval("ApellidoPaterno") %>' >
                  </asp:Label>
                    </td>

                    <td>
                <asp:Label ID="lbl_Rut" 
                runat="server" 
                Text='<%# Eval("Rut") %>' >
              </asp:Label>
                    </td>

                    <td>
                <asp:Label ID="lbl_curso" 
                runat="server" 
                Text='<%# Eval("Curso") %>' >
              </asp:Label>
                    </td>
                </tr>
                </table>
</ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <br />

</asp:Content>


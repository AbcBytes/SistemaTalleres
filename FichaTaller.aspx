<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FichaTaller.aspx.cs" Inherits="SistemaTalleres.FichaTaller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>
        Ingreso de Taller</h3>
    <table style="width:100%;">
        <tr>
            <td>
    <asp:Label ID="lblIdentificadorTaller" runat="server" BackColor="White" 
        Text="Identificador Taller"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtIdTaller" runat="server" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtIdTaller" ErrorMessage="Debe ingresar un Id">(*) Obligatorio</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="lblNombreTaller" runat="server" BackColor="White" 
        Text="Nombre Taller"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNombreTaller" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombreTaller" ErrorMessage="Debe ingresar un Nombre">(*) Obligatorio</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="lbldiaTaller" runat="server" BackColor="White" 
        Text="Horario Taller (Dia - Hora)"></asp:Label>
            </td>
            <td>
    <asp:DropDownList ID="ddlHorarioTaller" runat="server" Width="200px">
    </asp:DropDownList>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="lblDisponibilidadTaller" runat="server" BackColor="White" 
        Text="Disponibilidad Taller"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="txtDisponibilidadTaller" runat="server" ReadOnly="true"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Profesor"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlProfesor" runat="server" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlProfesor" ErrorMessage="Seleccione un Profesor" InitialValue="Seleccione...">(*) Obligatorio</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
        <asp:Label ID="lblDescripcionTaller" runat="server" BackColor="White" 
            Text="Descripcion del Taller"></asp:Label>
            </td>
            <td>
        <asp:TextBox ID="txtDescripcionTaller" runat="server" Height="88px" 
            ReadOnly="false" Rows="5" TextMode="MultiLine" Width="681px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDescripcionTaller" ErrorMessage="Debe ingresar una Descripcion">(*) Obligatorio</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <div>
        <asp:Panel ID="Panel4" runat="server">
            <asp:DataList ID="DataList1" runat="server">
                  <ItemTemplate>
            <table>
                <tr>
                    <td>Nombre:</td>
                    <td>Profesor:</td>
                    <td>Dia:</td>
                 
                 </tr>
                <tr>
                    <td>
                  <asp:Label ID="lbl_Nombre" 
                    runat="server" 
                    Text='<%# Eval("nombreTaller") %>' >
                  </asp:Label>
                    </td>
                    
                    <td>
                  <asp:Label ID="lbl_profesor" 
                    runat="server" 
                    Text='<%# Eval("profesor.Nombres") %>' >
                  </asp:Label>
                    </td>

                    <td>
                <asp:Label ID="lbl_dia" 
                runat="server" 
                Text='<%# Eval("diaTaller") %>' >
              </asp:Label>
                    </td>

                  
                </tr>
                </table>
</ItemTemplate>
            </asp:DataList>
        </asp:Panel>
        <br />
        <br />
        <br />
    </div>
</asp:Content>

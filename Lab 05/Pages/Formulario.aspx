<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Lab_05.Pages.Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Formulario</h2>

    <div>
        <div>
            <span>Nombre completo</span>
            <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="TxtNombre" ErrorMessage="Nombre requerido" Text="*"></asp:RequiredFieldValidator>
          <%--  <asp:RangeValidator ID="rvNombre" runat="server" ControlToValidate="TxtNombre" ErrorMessage="El nombre debe tener entre 4 y 20 caracteres" MinimumValue="4" MaximumValue="20" Type="String"></asp:RangeValidator><br />--%>

        </div>

        <div>
            <span>Email</span>
            <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Email requerido" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="TxtEmail" ErrorMessage="El correo electrónico no tiene un formato válido" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b"></asp:RegularExpressionValidator><br />
        </div>

        <div>
            <span>Fecha nacimiento</span>
            <asp:TextBox ID="TxtFechaNacimiento" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFechaNacimiento" runat="server" ControlToValidate="TxtFechaNacimiento" ErrorMessage="Fecha de Nacimiento requerida" Text="*"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="cvFechaNacimiento" runat="server" ControlToValidate="TxtFechaNacimiento" ErrorMessage="La fecha debe ser menor a la fecha actual" OnServerValidate="cvFechaNacimiento_ServerValidate"></asp:CustomValidator><br />

        </div>
        <br />
        <div style="table-layout: fixed">
            <asp:Button ID="BtnRegistrar" runat="server"
                Text="Registrar"
                ForeColor="White" CssClass="btn btn-primary"
                OnClick="BtnRegistrar_Click" BorderColor="#0066FF" />
        </div>

    </div>
</asp:Content>

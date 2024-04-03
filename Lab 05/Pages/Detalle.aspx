<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="Lab_05.Pages.Detalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Detalle</h2>

    <div>
        <div>
            <span>Nombre completo</span>
            <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>

        <div>
            <span>Email</span>
            <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>

        <div>
            <span>Fecha nacimiento</span>
            <asp:TextBox ID="TxtFechaNacimiento" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>

    </div>
</asp:Content>

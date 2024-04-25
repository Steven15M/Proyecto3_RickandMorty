<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarUsuario.aspx.cs" Inherits="Proyecto3_RickandMorty.PaginaUsuario.ConsultarUsuario" %>


    <!-- Proyecto 3-->
    <!-- Progrmación 2-->
    <!-- Steven moscoso acuña-->
    <!-- Api de consulta de personajes-->


<!DOCTYPE html>
<style>
        .contenedor-centrado {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .background-image {
            background-image: url('RickAndMortyy.png');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .label-textbox {
            margin: 2px; /* Ajusta el espaciado entre los elementos */
            text-align: center; /* Centra el texto */
        }
        .texto-inferior-derecha {
         position: fixed; /* Posicionamiento fijo en la pantalla */
         bottom: 10px; /* Ajusta este valor para mover el texto más abajo */
         left: 10px; /* Ajusta este valor para mover el texto más a la derecha */
         color: white; /* Texto en blanco */
         padding: 10px; /* Espaciado alrededor del texto */
         font-size: 14px; /* Tamaño del texto */
        }
</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

<div>
    <img src="u_hispa1.png" width="125" height="125" style="position: absolute; top: 0; right: 0;"/>
</div>
<div class="texto-inferior-derecha">
    Proyecto 3 <br />
    Programación 2 <br />
    Steven Moscoso Acuña <br />
    API de consulta de personajes
</div>


    <form id="form1" runat="server">
        <div class="background-image">

            <asp:Image ID="img" runat="server" Width="150px" /><br />
            <asp:Label ID="Label1" runat="server" Text="Nombre:" CssClass="label-textbox"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" ReadOnly="true" CssClass="label-textbox"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Especie:" CssClass="label-textbox"></asp:Label>
            <asp:TextBox ID="txtEspecie" runat="server" ReadOnly="true" CssClass="label-textbox"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Origen:" CssClass="label-textbox"></asp:Label>
            <asp:TextBox ID="txtOrigen" runat="server" ReadOnly="true" CssClass="label-textbox"></asp:TextBox><br />
            <asp:Label ID="Label4" runat="server" Text="Género:" CssClass="label-textbox"></asp:Label>
            <asp:TextBox ID="txtGenero" runat="server" ReadOnly="true" CssClass="label-textbox"></asp:TextBox><br />
            <asp:Label ID="Label5" runat="server" Text="Estado:" CssClass="label-textbox"></asp:Label>
            <asp:TextBox ID="txtEstado" runat="server" ReadOnly="true" CssClass="label-textbox"></asp:TextBox><br />
            <asp:Label ID="Label6" runat="server" Text="Tipo:" CssClass="label-textbox"></asp:Label>
            <asp:TextBox ID="txtTipo" runat="server" ReadOnly="true" CssClass="label-textbox"></asp:TextBox><br />
            <asp:Label ID="Label7" runat="server" Text="Locación Actual:" CssClass="label-textbox"></asp:Label>
            <asp:TextBox ID="txtLocacionActual" runat="server" ReadOnly="true" CssClass="label-textbox"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Consultar" OnClick="Button1_Click" CssClass="label-textbox" />
            <asp:Image ID="Image1" runat="server" />
        </div>

    </form>
</body>
</html>
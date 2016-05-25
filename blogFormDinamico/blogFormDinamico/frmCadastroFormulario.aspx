<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCadastroFormulario.aspx.cs" Inherits="FormDinamico.frmParametrizacao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro de Formulários</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Cadastro de Formulários<br />
        <br />
        ID: <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        <br />
        Título: <asp:TextBox ID="txtTitulo" runat="server"></asp:TextBox>
        <br />
        Data Criação:
        <asp:TextBox ID="txtDataCriacao" runat="server"></asp:TextBox>
        <br />
        Permissão:
        <asp:TextBox ID="txtPermissao" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnGravar" runat="server" Text="Gravar" OnClick="btnGravar_Click" />
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCadastroCampos.aspx.cs" Inherits="FormDinamico.frmCadastroCampos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Cadastro de Campos por Formulário<br />
        <br />
        Formulário: <asp:DropDownList ID="cboFormularios" runat="server">
        </asp:DropDownList>
        <br />
        Label do campo:
        <asp:TextBox ID="txtLabelCampo" runat="server"></asp:TextBox>
        <br />
        campo Obrigatório?
        <asp:RadioButton ID="rdbObrigatorioSim" runat="server" Text="Sim" />
        <asp:RadioButton ID="rdbObrigatorioNao" runat="server" Text="Não" />
        <br />
        Tamanho do campo: <asp:TextBox ID="txtTamanho" runat="server"></asp:TextBox>
        <br />
        Capacidade Máxima do campo:
        <asp:TextBox ID="txtCapacidade" runat="server"></asp:TextBox>
        <br />
        Tipo do campo:
        <asp:DropDownList ID="cboTipoCampo" runat="server">
            <asp:ListItem>Selecione</asp:ListItem>
            <asp:ListItem>Button</asp:ListItem>
            <asp:ListItem>DropDownList</asp:ListItem>
            <asp:ListItem>TextBox</asp:ListItem>
        </asp:DropDownList>
        <br />
        Formato do campo:
        <asp:DropDownList ID="cboFomarto" runat="server">
        </asp:DropDownList>
        <br />
        campo Vísivel? <asp:RadioButton ID="rdbVisivelSim" runat="server" Text="Não" />
        <asp:RadioButton ID="rdbVisivelNao" runat="server" Text="Não" />
        <br />
        <br />
        <asp:Button ID="btnAdicionar" runat="server" Text="Adicionar Campo" />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <asp:Button ID="btnSalvar" runat="server" Text="Salvar Configurações" />
    
    </div>
    </form>
</body>
</html>

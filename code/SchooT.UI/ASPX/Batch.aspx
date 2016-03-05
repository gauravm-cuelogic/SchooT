<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Batch.aspx.cs" Inherits="ASPX_Batch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <table>
        <tr>
            <td width="200px">Name</td>
            <td width="200px">DisplayName</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtDisplayName" runat="server"></asp:TextBox></td>
            <td></td>
            <td>
                <asp:Button ID="btnButton" runat="server" Text="Button" OnClick="btnButton_Click" /></td>
        </tr>
      </table>
    </form>
</body>
</html>

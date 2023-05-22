<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="zhuce.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户注册</title>
    <style>
        *{
            text-align:center;
        }
        table{
            margin:0 auto;
        }
        .td1{
            text-align:right;
        }
        .td2{
            width:100px;
        }
        .td3{
            text-align:left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>用户注册</h2>
        <table>
            <tr>
                <td class="td1"><label for="txtUsername">用户名:</label></td>
                <td class="td2"><asp:TextBox ID="txtUsername" runat="server" /></td>
                <td class="td3">@163.com</td>
            </tr>
            <tr>
                <td class="td1"><label for="txtPassword">密码:</label></td>
                <td class="td2"><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /></td>
                <td class="td3"><asp:CheckBox ID="chkShowPassword" runat="server" Text="显示密码" AutoPostBack="false" onclick="togglePasswordVisibility()" /></td>
            </tr>
            <tr>
                <td class="td1"><label for="txtPhone">手机号:</label></td>
                <td class="td2"><asp:TextBox ID="txtPhone" runat="server" /></td>
            </tr>
            <tr>
                <td class="td1"></td>
                <td class="td2"><asp:Button ID="btnRegister" runat="server" Text="注册" OnClick="btnRegister_Click" /></td>
            </tr>
            <tr>
                <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
            </tr>
        </table>
        <div>
            
        </div>
    </form>
</body>
    <script>
        function togglePasswordVisibility() {
            var passwordInput = document.getElementById('<%= txtPassword.ClientID %>');
            var checkbox = document.getElementById('<%= chkShowPassword.ClientID %>');

            if (checkbox.checked) {
                passwordInput.type = 'text';
            } else {
                passwordInput.type = 'password';
            }
        }
    </script>
</html>

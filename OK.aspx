<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OK.aspx.cs" Inherits="zhuce.OK" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>注册成功</title>
    <style>
        *{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>注册成功,三秒后返回主页</h2>
        </div>
    </form>
</body>
    <script type="text/javascript">
    // 延时3秒钟
    setTimeout(function() {
        // 跳转到指定页面
        window.location.href = "Default.aspx";
    }, 3000);
    </script>
</html>

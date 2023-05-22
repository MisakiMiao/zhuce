using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zhuce
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            /*string ConnStr = ConfigurationManager.ConnectionStrings["Database1"].ToString();
            SqlConnection conn = new SqlConnection(ConnStr);
            string em = Request.Form["username"].ToString() + "@163.com";
            string p = Request.Form["password"].ToString();
            string t = Request.Form["phone"].ToString();

            string SqlStr = "insert into users(username, password, phone) valuse ('" + em + "','" + p + "','" + t + "')";
            SqlCommand cmd = new SqlCommand(SqlStr, conn);
            conn.Open();
            int count = (int)cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Default.aspx");*/

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string ConnStr = ConfigurationManager.ConnectionStrings["Database1"].ToString();// 替换为数据库连接字符串

            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string phone = txtPhone.Text;

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(phone))
            {
                // 验证失败
                lblErrorMessage.Text = "请输入所有必填字段";
                return;
            }

            try
            {
                using (SqlConnection connection = new SqlConnection(ConnStr))
                {
                    string SqlStr = "INSERT INTO Users (username, password, phone) VALUES (@Username, @Password, @Phone)";

                    using (SqlCommand command = new SqlCommand(SqlStr, connection))
                    {
                        command.Parameters.AddWithValue("@Username", username);
                        command.Parameters.AddWithValue("@Password", password);
                        command.Parameters.AddWithValue("@Phone", phone);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }
                // 注册成功，重定向到成功页面
                Response.Redirect("OK.aspx");
            }
            catch (Exception ex)
            {
                // 处理异常
            }
        }


    }
}
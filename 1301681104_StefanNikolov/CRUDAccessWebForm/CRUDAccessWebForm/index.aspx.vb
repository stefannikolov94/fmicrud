Imports System.Data.OleDb
Partial Class index

    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

    End Sub
    Private Sub Button1_Click1(sender As Object, e As EventArgs) Handles Button1.Click
        Dim MyConnection As OleDbConnection
        Dim Command As OleDbCommand
        Dim Sqlstr, username, password, email As String

        Myconnection = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\users.accdb")
        MyConnection.Open()

        username = TextBox1.Text.ToString
        password = TextBox2.Text.ToString
        email = TextBox3.Text.ToString

        Sqlstr = "Insert into users ([username], [password], [email]) " +
                " VALUES ('" + username + "','" + password + "','" + email + "');"

        Command = New OleDbCommand(Sqlstr, MyConnection)
        Command.ExecuteNonQuery()
        MyConnection.Close()

    End Sub
End Class
<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="CRUDAccessWebForm.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to my CRUD</title>
</head>
<body>
    <h3>Welcome to my CRUD System</h3>
    <form id="form1" runat="server">
      <div>

          Add User<br />
          <br />
          <label>username:</label>
          <asp:TextBox ID="TextBox1" runat="server" Height="16px"></asp:TextBox>
          <br />
          <label>password:</label> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
          <br />
          <label>email:</label>
          <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
          <br />
          <asp:Button ID="Button1" runat="server" Text="Button" />
          <br />
          <br />
          <br />

          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                  <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                  <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                  <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                  <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
              </Columns>
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [users] WHERE [ID] = ?" InsertCommand="INSERT INTO [users] ([ID], [username], [password], [email]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [users]" UpdateCommand="UPDATE [users] SET [username] = ?, [password] = ?, [email] = ? WHERE [ID] = ?">
              <DeleteParameters>
                  <asp:Parameter Name="ID" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="ID" Type="Int32" />
                  <asp:Parameter Name="username" Type="String" />
                  <asp:Parameter Name="password" Type="String" />
                  <asp:Parameter Name="email" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="username" Type="String" />
                  <asp:Parameter Name="password" Type="String" />
                  <asp:Parameter Name="email" Type="String" />
                  <asp:Parameter Name="ID" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>

      </div>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        </asp:UpdatePanel>

    </form>
</body>
</html>


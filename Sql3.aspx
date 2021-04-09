<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sql3.aspx.cs" Inherits="Birger_Bolcher.Sql3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sql3</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 39px">
            <h2 style="height: 32px">SQL-03</h2>
           

        </div>
        <div style="height: 652px">
            
            <asp:TextBox ID="TextBox1" runat="server" Width="198px" KeyPress="textBox1_KeyPress"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="VIS ALLE " Width="93px" />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Bolcher_id" DataSourceID="SqlDataSource1" AllowSorting="true" Height="260px" Width="679px">
                <Columns>
                    <asp:BoundField DataField="Bolcher_id" HeaderText="Bolcher_id" InsertVisible="False" ReadOnly="True" SortExpression="Bolcher_id" />
                    <asp:BoundField DataField="Navn" HeaderText="Navn" SortExpression="Navn" />
                    <asp:BoundField DataField="Farve" HeaderText="Farve" SortExpression="Farve" />
                    <asp:BoundField DataField="vaegt_gram" HeaderText="vaegt_gram" SortExpression="vaegt_gram" />
                    <asp:BoundField DataField="Smags_Surhed" HeaderText="Smags_Surhed" SortExpression="Smags_Surhed" />
                    <asp:BoundField DataField="Smags_Styrke" HeaderText="Smags_Styrke" SortExpression="Smags_Styrke" />
                    <asp:BoundField DataField="Smags_Type" HeaderText="Smags_Type" SortExpression="Smags_Type" />
                    <asp:BoundField DataField="Pris" HeaderText="Pris" SortExpression="Pris" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BolcherConnectionString %>" SelectCommand="SELECT * FROM [Bolcher]"></asp:SqlDataSource>
            <br />
            
        </div>
    </form>
</body>
</html>

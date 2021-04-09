<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sql2.aspx.cs" Inherits="Birger_Bolcher.Sql2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>SQL -02</h2>
             <asp:Button id="btn2" runat="server" Text="Tilbage til Forside" PostBackUrl="~/Forside.aspx"/>
        </div>
        <div>
            <h3>
                    CREATE DATABASE Bolcher  <br/>
                    use Bolcher  <br/>
                  <br/>
                   CREATE TABLE Bolcher(  <br/>
                   Bolcher_id INT PRIMARY KEY IDENTITY,  <br/>
                   Navn VARCHAR(100) NOT NULL,  <br/>
                   Farve VARCHAR(100) NOT NULL,  <br/>
                   vaegt_gram int NOT NULL,  <br/>
                   Smags_Surhed VARCHAR(100) NOT NULL,  <br/>
                   Smags_Styrke VARCHAR(100) NOT NULL,  <br/>
                   Smags_Type VARCHAR(100) NOT NULL,  <br/>
                   Pris int NOT NULL,  <br/>
                   )  <br/>
                <br/>

                   CREATE TABLE Kunde(  <br/>
                   Kunde_id INT PRIMARY KEY IDENTITY,  <br/>
                   Navn varchar(100) NOT NULL,  <br/>
                   Tlf varchar(100) NOT NULL,   <br/>
                   )  <br/>
                  <br/>

                   CREATE TABLE Ordre(  <br/>
                   Ordre_id INT PRIMARY KEY IDENTITY,  <br/>
                   Kunde_id INT FOREIGN KEY REFERENCES Kunde(Kunde_id),  <br/>
                   Bolcher_id INT FOREIGN KEY REFERENCES Bolcher(Bolcher_id),  <br/>
                   kg varchar(100) NOT NULL,  <br/>
                   Pris varchar(100) NOT NULL,  <br/>
                  )  <br/>
    
        <asp:Button id="AllRed_Btn" runat="server" Text="Udskriv alle røde Bolcher" OnClick="AllRed_Btn_Click" Width="170px"/>
        <asp:Button id="RedAndBlue_Btn" runat="server" Text="Udskriv alle Røde og blå" OnClick="AllRed_Btn_Click" Width="170px"/>
        <asp:Button id="RedAndBlue_Btn0" runat="server" Text="Alle i Alfabetisk" OnClick="AllAlfa" Width="170px"/>
        <asp:Button ID="Btn_B" runat="server" Text="Bolcher som starter med B" Width="193px" OnClick="Btn_B_Click"  />
                    <asp:Button ID="Btn_e" runat="server" Text="Bolcher som hvor der er et e i navnet" OnClick="Btn_e_Click" />
                 <asp:Button ID="Btn_num" runat="server" Text="Mindre end 10g og sorter efter vægt" OnClick="Btn_e_Click" />
                    <asp:Button ID="Btn_2" runat="server" Text="Mellem 10 og 12 g, sorteret efter vægt" OnClick="Btn_2_Click" />
                    <asp:Button ID="Btn_3" runat="server" Text="Find tungeste Bolche" OnClick="Btn_3_Click" />
            </h3>

        </div>
    
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" allowSorting="true" DataKeyNames="Bolcher_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1157px">
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
    
    </form>

</body>
</html>

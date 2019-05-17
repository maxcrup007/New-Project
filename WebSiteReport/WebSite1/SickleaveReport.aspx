<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SickleaveReport.aspx.cs" Inherits="SickleaveReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align = 'center'>
            ตารางรายงาน &quot;การลาป่วย&quot;<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" SupportedOrientations="Landscape" >
                <Columns>
                    <asp:BoundField DataField="Employee_ID" HeaderText="รหัสพนักงาน" SortExpression="Employee_ID" />
                    <asp:BoundField DataField="Employee_surname" HeaderText="ชื่อ-สกุลพนักงาน" SortExpression="Employee_surname" />
                    <asp:BoundField DataField="Date_gone" HeaderText="วันที่จะไป" SortExpression="Date_gone" />
                    <asp:BoundField DataField="Date_comes" HeaderText="วันที่จะกลับมา" SortExpression="Date_comes" />
                    <asp:BoundField DataField="Address" HeaderText="ที่อยู่" SortExpression="Address" />
                    <asp:BoundField DataField="Phonenumber" HeaderText="เบอร์โทร" SortExpression="Phonenumber" />
                    <asp:BoundField DataField="Email" HeaderText="อีเมล" SortExpression="Email" />
                    <asp:BoundField DataField="Description" HeaderText="คำอธิบาย" SortExpression="Description" />
                    <asp:BoundField DataField="Document" HeaderText="เอกสาร" SortExpression="Document" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ReportingConnectionString5 %>" SelectCommand="SELECT * FROM [Table_Reportingsickleave]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Backbutton" runat="server" Text="Back" PostBackUrl="~/Reporting_DB.aspx" />
            <br />
        </div>
    </form>
</body>
</html>

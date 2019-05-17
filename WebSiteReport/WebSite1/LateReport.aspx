<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LateReport.aspx.cs" Inherits="LateReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Late</title>
</head>
<body>
    <form id="form1" runat="server">
        <div align = 'center'>
            ตารางรายงาน &quot;การมาสาย&quot;<br /> 
            <br />    
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" SupportedOrientations="Landscape" >
                <Columns>
                    <asp:BoundField DataField="Employee_ID" HeaderText="รหัสพนักงาน" SortExpression="Employee_ID" />
                    <asp:BoundField DataField="Employee_surname" HeaderText="ชื่อ-สกุลพนักงาน" SortExpression="Employee_surname" />
                    <asp:BoundField DataField="Date" HeaderText="วันที่" SortExpression="Date" />
                    <asp:BoundField DataField="Late_Time" HeaderText="เวลาที่มาสาย" SortExpression="Late_Time" />
                    <asp:BoundField DataField="Address" HeaderText="ที่อยู่" SortExpression="Address" />
                    <asp:BoundField DataField="Phonenumber" HeaderText="เบอร์โทร" SortExpression="Phonenumber" />
                    <asp:BoundField DataField="Email" HeaderText="อีเมล" SortExpression="Email" />
                    <asp:BoundField DataField="Description" HeaderText="คำอธิบาย" SortExpression="Description" />
                    <asp:BoundField DataField="Document" HeaderText="เอกสาร" SortExpression="Document" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ReportingConnectionString7 %>" SelectCommand="SELECT * FROM [Table_Calculatingtime]"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReportingConnectionString2 %>" SelectCommand="SELECT * FROM [Table_Reportinglate]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Back" PostBackUrl="~/Reporting_DB.aspx" />
        </div>
    </form>
</body>
</html>

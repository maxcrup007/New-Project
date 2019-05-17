<head runat="server">
    <title></title>
</head>
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1" runat="server">
        <div align = 'center'>
            <br />
            <br />
            ตารางรายงาน &quot;การลา&quot; และ &quot;การมาสาย&quot;<br />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" PostBackUrl="~/LateReport.aspx" Text="มาสาย" />
            <asp:Button ID="Button3" runat="server" PostBackUrl="~/ErrandleaveReport.aspx" Text="ลากิจ" />
            <asp:Button ID="Button5" runat="server" PostBackUrl="~/SickleaveReport.aspx" Text="ลาป่วย" />
            <asp:Button ID="Button6" runat="server" Text="พนักงาน" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Okay" />
            <asp:Button ID="Button2" runat="server" Text="Back" />
            <br />
        </div>
    </form>
</body>
</html>

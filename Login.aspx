<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExpTracker.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><style type="text/css">
        .style1
        {
            width: 33%;
            height: 68px;
            color: #000000;
        }
        .style2
        {
            text-align: left;
        }
        .style3
        {
            color: #000000;
        }
    </style>

</head>
<body background="bg_microsoft_bottomnew.png">
    <form id="form1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p style="margin-left: 200px; font-size: xx-large; "/>
        &nbsp;<CENTER style="font-size: xx-large; " class="style3" >WELCOME TO EXPENSE TRACKER TOOL</CENTER>
        <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br /><CENTER>
    <table class="style1">
        <tr>
            <td>
        <asp:Label ID="Label1" runat="server" Text="Label" style="color: #000000">USER NAME </asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox
            ID="TextBox1" runat="server" Width="129px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
        <asp:Label ID="Label2" runat="server" Text="Label" style="color: #000000">PASSWORD </asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox
            ID="TextBox2" runat="server" TextMode="Password" Width="130px"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"><center>
                <asp:Button ID="Button1" runat="server" Text="Button" 
                    onclick="Button1_Click1" BorderStyle="Dashed" BorderColor="Black" /></center>
            </td>
        </tr>
    </table>
    </CENTER>
    <br />

    </p>
    </form>
</body>
</html>

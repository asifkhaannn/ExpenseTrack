<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Income.aspx.cs" Inherits="ExpTracker.Income1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table>
        <tr>
            <td>Logged Date</td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </td>
            </tr>
        <tr>
            <td>
            Amount Greater than:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Income" HeaderText="Income" SortExpression="Income" />
                        <asp:BoundField DataField="LoggedDate" HeaderText="LoggedDate" SortExpression="LoggedDate" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BudgetPlannerConnectionString %>" SelectCommand="SELECT * FROM [Income] WHERE (([Income] &gt;= @Income) or ([LoggedDate] &gt;= @LoggedDate))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Income" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="Calendar1" Name="LoggedDate" PropertyName="SelectedDate" Type="DateTime" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

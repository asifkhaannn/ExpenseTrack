<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GetExpenditure.aspx.cs" Inherits="ExpTracker.GetExpenditure" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Contfent2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <table>
            <tr>
                <td> Select a Category </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Category" DataValueField="ID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BudgetPlannerConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
                </td>
            </tr>
           <tr>
               <td>
                   Select the Date From
               </td>
               <td>
                   <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
               </td>
           </tr>
           <%-- <tr>
                <td>Select the Date To</td>
                <td>
                    <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                </td>
            </tr>--%>

            <tr>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Id" AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="CatID" HeaderText="CatID" SortExpression="CatID" />
                        <asp:BoundField DataField="ExpendDate" HeaderText="ExpendDate" SortExpression="ExpendDate" />
                        <asp:BoundField DataField="Value" HeaderText="Value" SortExpression="Value" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BudgetPlannerConnectionString %>" SelectCommand="SELECT Id, CatID, ExpendDate, Value FROM Expenditure WHERE (CatID = @CatID) AND (ExpendDate &gt;= @ExpendDate)" >
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="CatID" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="Calendar1" Name="ExpendDate" PropertyName="SelectedDate" Type="DateTime" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </tr>
        </table>
    </div>

</asp:Content>

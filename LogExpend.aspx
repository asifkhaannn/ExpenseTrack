<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LogExpend.aspx.cs" Inherits="ExpTracker.LogExpend" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div>
       <table>
           <tr>
               <th>ExpenditureDate</th>
               <td>
                   <%--<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>--%>
                   <%--<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar> --%>  
                   <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
               </td>
           </tr>
           <tr>
                <th>Amount</th>
               <td>
               <%--    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
                  <%-- <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>

                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

               </td>
               
           </tr>
           <tr>
                <th>Cateogry</th>
               <td>
                   <%--<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Category" DataValueField="ID">
                   </asp:DropDownList>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BudgetPlannerConnectionString %>" SelectCommand="SELECT [ID], [Category] FROM [Category]"></asp:SqlDataSource>
                --%>



                  <%-- <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Category" DataValueField="ID">
                   </asp:DropDownList>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BudgetPlannerConnectionString %>" SelectCommand="SELECT [ID], [Category] FROM [Category]"></asp:SqlDataSource>--%>



                   <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Category" DataValueField="ID">
                   </asp:DropDownList>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BudgetPlannerConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>



               </td>
               
           </tr>
           <tr><td colspan="2"> <%--<asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />--%>
               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
               </td></tr>
       </table>
       
    </div>
</asp:Content>

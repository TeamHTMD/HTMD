<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="demo.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav>
               <div class="menu">
                  <ul>
                      <asp:Repeater ID="menu" runat="server">
                          <ItemTemplate>
                              <li> <a href=""> <%# Eval("tenviet") %></a></li>
                               
                               
                          </ItemTemplate>
                      </asp:Repeater>
                       
                      <%
              if ((Boolean)Session["admin"] == false)
                          {
                                         %>

                       <li> <a href="login.aspx"> Đăng Nhập</a></li>
                      <%}
                         else
                         {%>
                      <li> <a href="logout.aspx"> Thoát</a></li>
                      <%} %>
                  </ul>
               </div>
            </nav>
</asp:Content>

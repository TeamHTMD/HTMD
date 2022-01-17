<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="download.aspx.cs" Inherits="demo.download" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="download">
          <asp:Repeater ID="rpdanhmuc" runat="server">
              <ItemTemplate>
                   <h2 class="home_title"> <%#  Eval("danhmuc") %></h2>
              </ItemTemplate>
          </asp:Repeater>
                <asp:Repeater ID="rpsanpham1" runat="server">
              <ItemTemplate>
                  
                <h2 class="download_name"> <%# Eval("sanpham") %></h2>
                <span class="downloaded">Lượt tải : <%# Eval("luottai") %></span>
                <span class="downloaded">Đánh giá : <%# Eval("rate") %></span>
                  <h4 class="preview"> Xem truớc</h4>
                 <div class="img_product"> <%# Eval("noidung") %></div>
                 <h3 class="downloaded"> bạn cần vip <%# Eval("download") %> để tải về</h3>
               </ItemTemplate>
               </asp:Repeater>
        
                  
                 <div class="download_download">
                 <span class="text_download"> cảm ơn bạn đã tải xuống tài liệu:</span>
                <asp:Button ID="btn_download" CssClass="btn btn_download" runat="server" Text="download" OnClick="btn_download_Click" />
             </div>
          <h4>
              <asp:Label ID="lbltb1" runat="server" Text=""></asp:Label>
             
          </h4>
    </div>
</asp:Content>

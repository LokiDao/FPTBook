﻿<%@ Page Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="Huongdanmuahang.aspx.cs" Inherits="DoAn4.WebForm12" Title="FPT Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 230px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Con1" runat="server">
<div class="daukhungmain">
    <asp:Label ID="lblTieuDe" runat="server" Font-Bold="False" Font-Names="Arial" 
        Font-Size="Large" ForeColor="#333333" Text="Hướng dẫn mua hàng"></asp:Label>
    </div>
    <div style="margin:10px">
    <b>1. Đặt hàng</b><br />

Trước hết bạn hãy vào mục <a href="Dangky.aspx" style="color: #FF0000">Đăng kí</a> trên website và tạo cho mình 1 tài khoản (nhớ ghi thông tin thật của bạn để tiện giao hàng).

Sau đó bạn xem các sản phẩm, xem chi tiết và click CHỌN MUA. Khi đó sản phẩm sẽ được đưa vào giỏ hàng của bạn.
Bạn muốn xem giỏ hàng của mình hãy chọn mục <a href="GioHang.aspx" 
            style="color: #FF0000">Giỏ hàng</a> trên thanh menu ngang.
Tại trang giỏ hàng này, bạn có thể THANH TOÁN để hoàn tất phần đặt hàng.<br /><br />
        <b>2. Thanh toán<br />
        </b><br />
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/Anh/thanhtoantructiep.jpg" 
                        Height="138px" />
                </td>
                <td>
                    &nbsp;<b>a. Thanh toán trực tiếp</b><br />
                    Các bạn có thể thanh toán trực tiếp tại cửa hàng ở địa chỉ: <i>
                    FPTBook An Khánh, Tp. Thủ Đức, Tp. HCM</i><br />
                     Hoặc thanh toán cho người giao hàng.<br />
                                    </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Image ID="Image6" runat="server" Height="116px" 
                        ImageUrl="~/Anh/chuyenphatnhanhtien.jpg" />
                </td>
                <td>
                    &nbsp;<b>b. Chuyển phát nhanh qua bưu điện</b><br />
                    Các bạn có thể thanh toán bằng cách gửi chuyển phát nhanh qua bưu điện tới địa chỉ sau: 
                    <i>Lê Hoài Nam - FPTBook An Khánh, Tp. Thủ Đức, Tp. HCM<br />
                     </i><br />
                    Lưu ý: Ghi rõ họ tên và địa chỉ người gửi (Giống với địa chỉ giao hàng)<br />
                    <br />
                                    </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Image ID="Image7" runat="server" Height="63px" 
                        ImageUrl="~/Anh/viettinbank.jpg" />
                </td>
                <td>
                    &nbsp;<b>c. Thanh toán qua ngân hàng</b><br />
                    Số tài khoản: <b>03410051490000</b><br />
                    Tên tài khoản: Lê Hoài Nam<br /></td>
            </tr>
        </table>
 <b>
                            <br />
                            3. Nhận hàng</b><br />
 Chúng tôi sẽ liên hệ với bạn để xác nhận đơn hàng trong vòng 60 phút kể từ khi bạn đặt hàng.
        Và sẽ giao tới địa chỉ đặt hàng trong vòng 48h kể từ khi bạn xác nhận đơn hàng. 

    </div>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKiThongTin.aspx.cs" Inherits="Lab1.DangKiThongTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 473px;
        }
        .auto-style4 {
            width: 473px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 473px;
            height: 24px;
        }
        .auto-style7 {
            height: 24px;
        }
        .auto-style8 {
            width: 473px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            DĂNG KÍ THÔNG TIN</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Họ Tên</td>
                <td>
                    <asp:TextBox ID="txtHoTen" runat="server" Width="494px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Ngày sinh</td>
                <td>
                    <asp:TextBox ID="txtNgaySinh" placehoder="dd/mm/yyyy" runat="server" Width="493px" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Giới tính</td>
                <td class="auto-style5">
                    <asp:RadioButton ID="rdNam" runat="server" Text="Nam" />
                    <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Trình Độ</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="ddlTrinhDo" runat="server" Height="65px" Width="504px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Nghề nghiệp<br />
                </td>
                <td class="auto-style7">
                    <asp:ListBox ID="lstNgheNghiep" runat="server" Width="501px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Hình</td>
                <td class="auto-style5">
                    <asp:FileUpload ID="FHinh" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3">Sở thích</td>
                <td>
                    <asp:RadioButtonList ID="cklsothich" runat="server">
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9">
                    <asp:Button ID="btnGui" runat="server" Text="Gửi" OnClick="btnGui_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Làm lại" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>Kết quả đăng kí</td>
            </tr>
            <tr>
                <td class="auto-style3" id="lbThongTin">
                    <asp:Label ID="lbThongTin" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

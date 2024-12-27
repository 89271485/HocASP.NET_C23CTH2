using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1
{
    public partial class DangKiThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                khoiTaoDuLieu();
            }    
        }

        private void khoiTaoDuLieu()
        {
            
                //Khoi tao du lieu cho  ddTrinhDo
                ddlTrinhDo.Items.Add(new ListItem("Trung Cấp", "01"));
                ddlTrinhDo.Items.Add(new ListItem("Cao Đẳng", "02"));
                ddlTrinhDo.Items.Add(new ListItem("Đại Học", "03"));
                ddlTrinhDo.Items.Add(new ListItem("Tiến Sĩ", "04"));

                //khoi tao du lieu cho lstNgheNghiep
                lstNgheNghiep.Items.Add(new ListItem("Công nhân", "01"));
                lstNgheNghiep.Items.Add(new ListItem("Bác sĩ ", "02"));
                lstNgheNghiep.Items.Add(new ListItem("Giáo viên", "03"));
                lstNgheNghiep.Items.Add(new ListItem("Lập Trình viên", "04"));
                lstNgheNghiep.Items.Add(new ListItem("Khác", "05"));

                //khoi tao cklsothich
                cklsothich.Items.Add(new ListItem("Mua Sắm", "01"));
                cklsothich.Items.Add(new ListItem("Xem Phim", "02"));
                cklsothich.Items.Add(new ListItem("Du Lịch", "03"));
                cklsothich.Items.Add(new ListItem("Ăn bám", "04"));
                cklsothich.Items.Add(new ListItem("PickelBall", "05"));
        
              
        }
protected void btnGui_Click(object sender, EventArgs e)
        {
            //b1.Lấy thông tin từ client
            string kq = "<ul>";
            kq += string.Format("<li> Họ Tên:<b> {0}</b>", txtHoTen.Text);
            kq += string.Format("<li> Ngày Sinh:<b> {0}</b>", txtNgaySinh.Text);
            kq += string.Format("<li> Giới Tính:<b> {0}</b>", (rdNam.Checked ? rdNam.Text : rdNu.Text));
            kq += string.Format("<li> Trình Độ:<b> {0}</b>", ddlTrinhDo.SelectedItem.Text);
            kq += string.Format("<li> Nghề Nghiệp:<b> {0}</b>", lstNgheNghiep.SelectedItem.Text);

            //xử lý hình ảnh
            if (FHinh.HasFile)
            {
                string path = Server.MapPath("~/Uploads");
                string filename = FHinh.FileName;
                FHinh.SaveAs(path + "/" + filename);
                kq += string.Format("<li>Ảnh Đại Diện:<img src='/Uploads/{0}' width='200px'>", filename);
            }
            //Lấy thông tin swor thích
            string sothich = "";
            foreach (ListItem item in cklsothich.Items)
            {
                if (item.Selected)
                {
                    sothich += item.Text + ";";
                }
            }
            kq += string.Format("<li> Sở Thích:<b> {0}</b>", sothich);
            kq += "</ul>";
            //b2.Hồi đáp kết quả
            lbThongTin.Text = kq;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            txtHoTen.Text = "";
            txtNgaySinh.Text = "";
            ddlTrinhDo.SelectedIndex = 0;
            lstNgheNghiep.SelectedIndex = -1;
            foreach (ListItem item in cklsothich.Items)
            {
                item.Selected = false;
            }
            lbThongTin.Text = "";
        }

    }
}

    
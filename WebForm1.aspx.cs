using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static System.Net.WebRequestMethods;



namespace registration_db_connection
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = "Data Source=NTP-LAP-226\\SQL_SERVER;Initial Catalog=registration;Integrated Security=True;Pooling=False";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "insert into student values('" + Username.Text + "','" + email_id.Text + "','" + phone_number.Text + "','" + RadioButtonList1.Text + "','" + CheckBoxList1.Text + "','" + DropDownList1.Text + "','" + FileUpload1.FileName + "','" + user.Text + "','" + password.Text + "',)";
            // cmd.CommandText = "insert into tbl_student values('" + txtname.Text + "','" + txtmail.Text + "','" + txtphone.Text + "','" + RadioButtonList1.Text + "','" + CheckBoxList1.Text + "','" + ddlyear.Text + "','" + ddlstate.Text + "','" + photo.FileName + "','" + txtuname.Text + "','" + txtpswd.Text + "')";

            cmd.Connection = con1;
            con1.Open();


            int i = cmd.ExecuteNonQuery();


            con1.Close();
            if (i == 1)
            {
                Response.Write("Sucess");
            }
            else
            {
                Response.Write("Fail");
            }
            //string date = " ";
            //for (int i = 1; i <= 31; i++)
            //{
            //   day.Items.Add(i.ToString());
            //}
            // for (int i = 1; i <= 12; i++)
            //{
            //  String mon = CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(i);
            //month.Items.Add(mon);
            //}
            //for (int i = 1945; i <= 2022; i++)
            //{
            //   year.Items.Add(i.ToString());
            //}
            //}
        }

        protected void bclick(object sender, EventArgs e)
        {



            //message.Text = message.Text + "";
            showusername.Text = Username.Text;
            showemail.Text = email_id.Text;
            phone.Text = phone_number.Text;

            string g = "";
            foreach (ListItem li in RadioButtonList1.Items)
            {
                if (li.Selected)
                {
                    g += li.Text + " ";
                }
            }
            gender.Text = g;


            //if(RadioButton1.Checked)
            //{
            //  gender.Text = RadioButton1.Text;
            // }
            //else
            //{
            //    gender.Text = RadioButton2.Text;

            //}


            // else if(RadioButton2.Checked)
            //{
            // gender.Text = RadioButton2.Text;
            // }
            // else
            // {
            // gender.Text = RadioButton3.Text;
            //}

            string course = "";

            foreach (ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)
                {
                    course += li.Text + " ";
                }
            }
            courses.Text = course;

            string s = "";
            foreach (ListItem li in DropDownList1.Items)
            {
                if (li.Selected)
                {
                    s += li.Text + " ";
                }
            }


            state.Text = s;
            files.Text = FileUpload1.FileName;
            //date.Text = Dob.Text;



            showuser.Text = user.Text;
            showpass.Text = password.Text;
            //ShowUserNameLabel.Text = "Name";
            //Username.Text = "";
            //email_id.Text = "";
            //RadioButton1.Checked = false;
            //RadioButton2.Checked = false;
            //RadioButton3.Checked = false;
            //CheckBoxList1.Selected = false;
            // Dob.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            






        }
    }
}

      //  protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        //{
            //Dob.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            //Calendar1.Visible = false;
        //}
        //date.Text =dob.Text;

    //}
//}
    



       
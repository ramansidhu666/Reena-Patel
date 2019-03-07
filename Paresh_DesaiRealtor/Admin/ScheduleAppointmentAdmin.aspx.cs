using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;
using Property_cls;
using Property_Cryptography;

namespace Property
{
    public partial class ScheduleAppointmentAdmin : System.Web.UI.Page
    {

        #region Global

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());
        cls_Property clsobj = new cls_Property();
        #endregion Global
        
        #region Page Load

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["FirstName"] != null)
            //{
            if (!IsPostBack)
            {
                if (Request.QueryString["edit"] != null)
                {
                    GetPageData();
                }
            }
            //}
            //else
            //{
            //    Response.Redirect("~/Admin/AdminLogin.aspx", false);
            //}
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtPhoneNo.Text = "";
            txtNotes.Text = "";
            txtEmail.Text = "";
            txtAppointmentDate.Text = "";

        }
        protected void GetPageData()
        {
            try
            {
                if (Request.QueryString["edit"] != null)
                {
                    var id = Convert.ToInt32(Request.QueryString["edit"]);


                    string qry = "select * from tbl_ScheduleAppointmentAdmin where Id=" + id + "";
                    DataTable dt = clsobj.GetdataTable(qry);


                    if (dt.Rows.Count > 0)
                    {
                        txtFirstName.Text = Convert.ToString(dt.Rows[0]["FirstName"]); ;
                        txtPhoneNo.Text = Convert.ToString(dt.Rows[0]["PhoneNumber"]);
                        txtLastName.Text = Convert.ToString(dt.Rows[0]["LastName"]);
                        txtEmail.Text = Convert.ToString(dt.Rows[0]["Email"]);
                        txtAppointmentDate.Text = Convert.ToString(dt.Rows[0]["AppointmentDate"]);
                        ClientId.Value = Convert.ToString(dt.Rows[0]["ID"]);
                       
                        txtNotes.Text = Convert.ToString(dt.Rows[0]["Notes"]);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion Page Load

        #region PageListGrid Events & Method


        //protected void GrdBlogList_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    int id = 0;
        //    if (e.CommandName == "Deleterec")
        //    {
        //        id = Convert.ToInt32(e.CommandArgument);
        //        int result = clsobj.DeleteDreamHouse(id);
        //        //FillGridData();
        //    }
        //    else if (e.CommandName == "Editrec")
        //    {
        //        id = Convert.ToInt32(e.CommandArgument);
        //        DataTable dt = new DataTable();
        //        dt = clsobj.GetDreamHousebyID(id);
        //        txtName.Text = dt.Rows[0]["Title"].ToString();


        //    }
        //    else
        //    {

        //    }
        //}

        #endregion PageListGrid Events & Method

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                if (ClientId.Value == null)
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "usp_AddScheduleAppointmentAdmin";
                    cmd.Connection = conn;

                    cmd.Parameters.AddWithValue("@ID", 0);
                    cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                    cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@PhoneNumber", txtPhoneNo.Text);
                    cmd.Parameters.AddWithValue("@AppointmentDate", txtAppointmentDate.Text);
                    cmd.Parameters.AddWithValue("@AppointmentTime", ddlAppointmentTime.SelectedValue);
                    cmd.Parameters.AddWithValue("@Notes", txtNotes.Text);

                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    int clientid = Convert.ToInt32(ClientId.Value);
                    clsobj.UpdateAdminAppointment(clientid, txtFirstName.Text, txtLastName.Text, txtEmail.Text, txtPhoneNo.Text, txtAppointmentDate.Text, ddlAppointmentTime.SelectedValue, txtNotes.Text);

                }
                string email = ConfigurationManager.AppSettings["RegFromMailAddress"];
                //string toemail = ConfigurationManager.AppSettings["MailToAddress"];
                MailMessage message = new MailMessage();
                message.To.Add(txtEmail.Text);
                message.From = new MailAddress(ConfigurationManager.AppSettings["RegFromMailAddress"]);
                message.Subject = "Your Appointment  has been scheduled";
                message.Body = "Name:" + txtFirstName.Text + "<br/>" + "Your Appointment  has been scheduled on " + txtAppointmentDate.Text + "  " + ddlAppointmentTime.SelectedValue + "";
                message.IsBodyHtml = true;
                SmtpClient smtpClient = new SmtpClient(ConfigurationManager.AppSettings["SmtpServer"]);
                smtpClient.Port = Int32.Parse(ConfigurationManager.AppSettings["Port"]);
                smtpClient.Credentials = new NetworkCredential(ConfigurationManager.AppSettings["RegFromMailAddress"], ConfigurationManager.AppSettings["RegPassword"]);
                smtpClient.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSsl"]);
                smtpClient.Send(message);
                clearform();
                //dvshw.Style["display"] = "show";
                //lblmessage.Text = "Thanks For Sending Message!";
                conn.Close();
                if ((Session["FeatureType"]) != null)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "ScriptKey", "alert('Your Appointment  has been saved');window.location='featureListing.aspx'; ", true);
                    //   Response.Redirect("~/featureListing.aspx", false);

                }
                else if (Session["Municipality"] != null)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "click", "alert('Your Appointment  has been saved');window.location.href ='Search.aspx?Municipality=" + Convert.ToString(Session["Municipality"]) + "'", true);
                    //  string targeturl=  "~/Search.aspx?Municipality=" + Convert.ToString(Session["Municipality"]);
                }
                else if (Session["Type1"] != null)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "click", "alert('Your Appointment  has been saved..');window.location.href ='PropertyDetails.aspx?MLSID=" + Convert.ToString(Session["MLSID"]) + "&PropertyType=" + Convert.ToString(Session["Type1"]) + "'", true);
                    //     Response.Redirect("PropertyDetails.aspx?MLSID=" + Convert.ToString(Session["MLSID"]) + "&PropertyType=" + Convert.ToString(Session["Type1"]), false);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "ScriptKey", "alert('Your Appointment  has been saved');window.location='AppointmentList.aspx'; ", true);
                    //   Response.Redirect("~/Search.aspx", false);
                }
            }
            catch (Exception ex)
            {
                lblmsg.Text = "An error occurred!!Try again";
                // ErrorMessege.Text = "An error occurred!!";
            }
        }
        private void clearform()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtPhoneNo.Text = "";
            txtAppointmentDate.Text = "";
            ddlAppointmentTime.Text = "";
            txtNotes.Text = "";
        }

    }
}
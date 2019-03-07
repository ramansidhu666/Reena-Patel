using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using Property_cls;
using System.Data.SqlClient;
using System.Configuration;

namespace Property
{
    public partial class HomeMaster : System.Web.UI.MasterPage
    {
        #region Global
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());
        cls_Property clsobj = new cls_Property();

        #endregion Global
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["FirstName"] = null;
                BindMenusList();
                SiteSetting();
                bindBnanners();
                GetImages();
                GetFeaturedProperties();
                //GetTestimonials();
            }
        }
        protected void addre_submit_Click(object sender, EventArgs e)
        {
           string s = search.Value;
            Response.Redirect("~/Review_home_worth.aspx?address=" + search.Value, false);
        }
        protected void button1_Click(object sender, EventArgs e)
        {
           // string s = search2.Value;
           // Response.Redirect("~/landing_page_review.aspx?address=" + search2.Value, false);
        }
        void GetFeaturedProperties()
        {
            try
            {
                DataTable dt = new DataTable();
                dt = clsobj.GetTopNFeturedProperties("3");
                foreach (DataColumn col in dt.Columns)
                    col.ReadOnly = false;
                foreach (DataRow row in dt.Rows)
                {
                    row["RemarksForClients"] = row["RemarksForClients"].ToString().Substring(0, 50);
                }

                Repeater1.DataSource = dt;

                Repeater1.DataBind();
            }
            catch (Exception ex)

            {
                throw ex;

            }
            finally
            {

            }
        }

        private void BindMenusList()
        {
            StringBuilder StrMenu = new StringBuilder();
            DataTable dt = new DataTable();
            DataTable dtSubmenu = new DataTable();
            dt = clsobj.GetMenuList();
            if (dt.Rows.Count > 0)
            {
                StrMenu.Append("<div id='sidebar-wrapper'>");
                StrMenu.Append("<ul class='sidebar-nav'>");
                StrMenu.Append("<a id='menu-close' href='#' class='btn btn-default btn-lg pull-right toggle'><i class='glyphicon glyphicon-remove'></i></a>");

                StrMenu.Append("<li class='sidebar-brand'> <a href='#' class='menu_heding'> Reena Patel</a></li>");
                StrMenu.Append("<li><a href='../Home.aspx' title='Home' class='active'>Home</a></li>");
                StrMenu.Append("<li><a href='StaticPages.aspx?PageID=22' title='Seller'>Seller</a></li>");
                StrMenu.Append("<li><a href='Buyers.aspx' title='Buyer'>Buyer</a></li>");
                StrMenu.Append("<li><a href='Home_Worth.aspx' title='Free Market Evaluation'>Free Market Evaluation </a></li>");
                StrMenu.Append("<li><a href='Landing_Page.aspx' title='Find your Dream Home'>Find your Dream Home </a></li>");
                StrMenu.Append("<li><a href='Calculators.aspx' title='Calculators'>Calculators </a></li>");
                StrMenu.Append("<li><a href='VirtualTour.aspx' title='Virtual Tour'>Virtual Tour </a></li>");
                StrMenu.Append("<li><a href='Featured_Properties.aspx' title='Featured Properties'>Featured Properties</a></li>");
                StrMenu.Append("<li><a href='RealEstateNews.aspx' title='Real Estate News'>Real Estate News </a></li>");
                StrMenu.Append("<li><a href='ContactUs.aspx' title='Contact Us'>Contact Us </a></li>");
                StrMenu.Append("</ul>");
                StrMenu.Append("</div>");
            }
            dynamicmenus.Text = StrMenu.ToString();
        }
        public void GetImages()
        {
            Property1.MLSDataWebServiceSoapClient mlsClient = new Property1.MLSDataWebServiceSoapClient();


            DataTable dt = clsobj.GetDreamHouseList();
            if (dt.Rows.Count > 0)
            {
                rptImages.DataSource = dt;
                rptImages.DataBind();

            }
            else
            {

            }

            mlsClient = null;
        }
        protected void SiteSetting()
        {
            try
            {
                DataTable dt = clsobj.GetSiteSettings();
                DataTable dt1 = clsobj.GetUserInfo();
                if (dt.Rows.Count > 0)
                {
                   // lblemailid.Text = Convert.ToString(dt.Rows[0]["Email"]);
                    siteTitle.Text = Convert.ToString(dt.Rows[0]["Title"]);
                    //lblemail.Text = Convert.ToString(dt.Rows[0]["Email"]);
                    //lblmobile2.Text = Convert.ToString(dt.Rows[0]["Mobile"]);
                    //lblmobile.Text = Convert.ToString(dt.Rows[0]["Mobile"]);
                    //lblfax.Text = Convert.ToString(dt.Rows[0]["Fax"]);
                    //lblemail.Text = Convert.ToString(dt.Rows[0]["Email"]);
                    if (dt1.Rows.Count > 0)
                    {
                        //lblBrkrOneName.Text = Convert.ToString(dt1.Rows[0]["FirstName"]) + " " + Convert.ToString(dt1.Rows[0]["LastName"]);
                    }
                  
                    byte[] favimage = (byte[])dt.Rows[0]["Favicon.ico"];
                    if (favimage.Length > 0)
                    {
                        Session["MyFavicon"] = favimage;
                        favicon.Visible = true;
                        favicon.Href = "~/ShowFavicon.aspx";
                    }
                    else
                    {
                        favicon.Visible = false;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        protected void bindBnanners()
        {
            StringBuilder html = new StringBuilder();
            DataTable dt = clsobj.GetAllBanner();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string Images;
                Images = "/admin/uploadfiles/" + dt.Rows[i]["FileName"].ToString();
                if (Images != "")
                {
                    html.AppendLine("<img src='" + Images + "'  data-thumb='" + Images + "'  alt='banner" + i + "' />");
                }
            }
            ltrImgsf.Text = html.ToString();
        }
    }
}
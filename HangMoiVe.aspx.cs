﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

namespace DoAn4
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            phantrang();
        }
        public void phantrang()
        {
            InfoDataContext db = new InfoDataContext();
            DataSet ds = new DataSet();
            dt = ds.Tables["tbl_Product"];

            DataRow dr;
           var tmp = (from a in db.tbl_Products
                          from b in db.tbl_Imports
                          from c in db.tbl_ImportDetails
                          orderby b.Date descending
                          where b.Import_ID==c.Import_ID&&a.Product_ID==c.Product_ID
                      select new { a.Product_ID, a.Product_Name, a.Image, a.Price_Export }).Distinct().Take(15);
            foreach (var n in tmp)
            {
                dr = dt.NewRow();
                dr[0] = n.Product_ID;
                dr[1] = n.Product_Name;
                dr[2] = n.Image;
                dr[3] = n.Price_Export.ToString("###,###").Replace(',', '.');
                dt.Rows.Add(dr);
            }
            //Download source code FREE tai Sharecode.vn
            PagedDataSource pdata = new PagedDataSource();
            pdata.DataSource = ds.Tables[0].DefaultView;
            pdata.PageSize = 9;
            pdata.AllowPaging = true;
            pdata.CurrentPageIndex = CurrentP;
            sanphammoi.DataSource = pdata;
            sanphammoi.DataBind();
            LbtBack.Enabled = !pdata.IsFirstPage;
            LbtNext.Enabled = !pdata.IsLastPage;
            LblPage.Text = (CurrentP + 1) + "/" + pdata.PageCount;
        }
        public int CurrentP
        {
            set
            {
                this.ViewState["cp"] = value;
            }
            get
            {
                if (this.ViewState["cp"] == null)
                {
                    this.ViewState["cp"] = 0;
                    return 0;
                }
                else
                {
                    return (int)this.ViewState["cp"];
                }
            }
        }

        protected void LbtBack_Click(object sender, EventArgs e)
        {
            CurrentP -= 1;
            phantrang();
        }

        protected void LbtNext_Click(object sender, EventArgs e)
        {
            CurrentP += 1;
            phantrang();
            //Download source code FREE tai Sharecode.vn
        }

    }
}

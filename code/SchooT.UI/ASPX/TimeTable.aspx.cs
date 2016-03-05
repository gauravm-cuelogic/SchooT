using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;

public partial class ASPX_TimeTable : System.Web.UI.Page
{
    string eventData;

    public string EventData
    {
        get { return eventData; }
        set { eventData = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using SchooT.Console;

public partial class ASPX_EngineView : System.Web.UI.Page
{
    string eventData;

    public string EventData
    {
        get { return eventData; }
        set { eventData = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        var generator = new Generator();
        var timeTable = generator.GetTimeTable();

        List<Events> eventList = new List<Events>();

        Events eventData;

        var Lectures = timeTable.ListLectures.Where(x => x.ClassId == 1 && x.DivisionId == 1).ToList();

        foreach (var item in Lectures)
        {
            eventData = new Events();

            eventData.title = item.SubjectName + " - " + item.TeacherName;

            eventData.start = new DateTime(item.Day.Date.Year, item.Day.Date.Month, item.Day.Date.Day, item.StartTime.Value.Hours, item.StartTime.Value.Minutes, item.StartTime.Value.Seconds);

            eventData.end = new DateTime(item.Day.Date.Year, item.Day.Date.Month, item.Day.Date.Day, item.EndTime.Value.Hours, item.EndTime.Value.Minutes, item.EndTime.Value.Seconds);

            eventList.Add(eventData);
        }

        EventData = Newtonsoft.Json.JsonConvert.SerializeObject(eventList);
    }
}

public class Events
{
    public string title { get; set; }

    public DateTime start { get; set; }

    public DateTime end { get; set; }
}
# How to change the working directions (RTL) of the Flutter calendar (SfCalendar)

In the Flutter calendar widget, you can change the working directions (RTL and LTR) of the flutter calendar by using the `Directionality` widget.

## Step 1:
In initState(), set the default values for the flutter calendar views.

```xml
CalendarView _calendarView;
@override
void initState() {
  // TODO: implement initState
  _calendarView = CalendarView.week;
  super.initState();
}
```
## Step 2:
Use `Directionality` widget inside the body of the Scaffold. And then, use `textDirection` property for changing the directionality of the calendar.

```xml
body: Directionality(
  textDirection: TextDirection.rtl,
  child: Scaffold(
    body: SfCalendar(
      view: _calendarView,
      dataSource: getCalendarDataSource(),
      monthViewSettings: MonthViewSettings(showAgenda: true),
    ),
  ),
));
```
**[View document in Syncfusion Flutter Knowledge base](https://www.syncfusion.com/kb/11442/how-to-change-the-working-directions-rtl-of-the-flutter-calendar-sfcalendar)**

**Screenshots**

<img alt="day"  src="http://www.syncfusion.com/uploads/user/kb/flut/flut-838/flut-838_img1.jpeg" width="250" height="400" />|
<img alt="week"  src="http://www.syncfusion.com/uploads/user/kb/flut/flut-838/flut-838_img2.jpeg" width="250" height="400" />|
<img alt="workweek"  src="http://www.syncfusion.com/uploads/user/kb/flut/flut-838/flut-838_img3.jpeg" width="250" height="400" />|
<img alt="month"  src="http://www.syncfusion.com/uploads/user/kb/flut/flut-838/flut-838_img4.jpeg" width="250" height="400" />|
<img alt="timeline day"  src="http://www.syncfusion.com/uploads/user/kb/flut/flut-838/flut-838_img5.jpeg" width="250" height="400" />|
<img alt="timeline week"  src="http://www.syncfusion.com/uploads/user/kb/flut/flut-838/flut-838_img6.jpeg" width="250" height="400" />|
<img alt="timeline work week"  src="http://www.syncfusion.com/uploads/user/kb/flut/flut-838/flut-838_img7.jpeg" width="250" height="400" />|

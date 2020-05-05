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

![day](http://www.syncfusion.com/uploads/user/kb/flut/flut-838/flut-838_img1.jpeg)
![week](http://www.syncfusion.com/uploads/user/kb/flut/flut-838/flut-838_img2.jpeg)
![workweek](http://www.syncfusion.com/uploads/user/kb/flut/flut-838/flut-838_img3.jpeg)
![month](http://www.syncfusion.com/uploads/user/kb/flut/flut-838/flut-838_img4.jpeg)
![timeline day](http://www.syncfusion.com/uploads/user/kb/flut/flut-838/flut-838_img5.jpeg)
![timeline week](http://www.syncfusion.com/uploads/user/kb/flut/flut-838/flut-838_img6.jpeg)
![timeline work week](http://www.syncfusion.com/uploads/user/kb/flut/flut-838/flut-838_img7.jpeg)

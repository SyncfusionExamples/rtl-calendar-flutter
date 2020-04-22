import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(WorkingDirection());

class WorkingDirection extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: CalendarDirection(),
    );
  }
}

class CalendarDirection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CalendarDirectionState();
}

List<String> views = <String>[
  'Day',
  'Week',
  'WorkWeek',
  'Month',
  'Timeline Day',
  'Timeline Week',
  'Timeline WorkWeek'
];

class _CalendarDirectionState extends State<CalendarDirection> {
  CalendarView _calendarView;

  @override
  void initState() {
    // TODO: implement initState
    _calendarView = CalendarView.week;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: PopupMenuButton<String>(
            icon: Icon(Icons.calendar_today),
            itemBuilder: (BuildContext context) => views.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList(),
            onSelected: (String value) {
              setState(() {
                if (value == 'Day') {
                  _calendarView = CalendarView.day;
                } else if (value == 'Week') {
                  _calendarView = CalendarView.week;
                } else if (value == 'WorkWeek') {
                  _calendarView = CalendarView.workWeek;
                } else if (value == 'Month') {
                  _calendarView = CalendarView.month;
                } else if (value == 'Timeline Day') {
                  _calendarView = CalendarView.timelineDay;
                } else if (value == 'Timeline Week') {
                  _calendarView = CalendarView.timelineWeek;
                } else if (value == 'Timeline WorkWeek') {
                  _calendarView = CalendarView.timelineWorkWeek;
                }
              });
            },
          ),
        ),
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
  }

  _DataSource getCalendarDataSource() {
    final List<Appointment> appointments = <Appointment>[];
    appointments.add(Appointment(
      startTime: DateTime.now(),
      endTime: DateTime.now().add(const Duration(hours: 1)),
      subject: 'Meeting',
      color: Colors.pink,
      isAllDay: true,
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(hours: 4, days: -1)),
      endTime: DateTime.now().add(const Duration(hours: 5, days: -1)),
      subject: 'Release Meeting',
      color: Colors.lightBlueAccent,
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(hours: 2, days: -2)),
      endTime: DateTime.now().add(const Duration(hours: 4, days: -2)),
      subject: 'Performance check',
      color: Colors.amber,
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(hours: 6, days: -3)),
      endTime: DateTime.now().add(const Duration(hours: 7, days: -3)),
      subject: 'Support',
      color: Colors.green,
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(hours: 6, days: 2)),
      endTime: DateTime.now().add(const Duration(hours: 7, days: 2)),
      subject: 'Retrospective',
      color: Colors.purple,
    ));

    return _DataSource(appointments);
  }
}

class _DataSource extends CalendarDataSource {
  _DataSource(this.source);

  List<Appointment> source;

  @override
  List<dynamic> get appointments => source;
}

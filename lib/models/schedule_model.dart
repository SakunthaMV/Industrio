// ignore_for_file: public_member_api_docs, sort_constructors_first
class ScheduleProject {
  String? name;
  String? time;
  String? title;
  String? position;
  ScheduleProject({
    this.name,
    this.time,
    this.title,
    this.position,
  });

  static List<ScheduleProject> scheduleList = [
    ScheduleProject(
      name: "Mr.Suneth Kotuthanne",
      time: "9.00 AM",
      title: "e Speech",
      position: "Engineer at Ansell Lanka Pvt Ltd",
    ),
  ];
}

import 'package:flutter/material.dart';

import 'package:industrio_2023/pages/schedule/schedule_card.dart';
import 'package:industrio_2023/pages/widgets/common_page.dart';
import 'package:timelines/timelines.dart';

class SchedulePage extends StatefulWidget {
  static const route = "Schedule";
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CommonPage(
      page: SchedulePage.route,
      content: Column(
        crossAxisAlignment: size.width > 650
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 250 * 11,
            child: Timeline.tileBuilder(
              shrinkWrap: false,
              builder: TimelineTileBuilder.connectedFromStyle(
                connectionDirection: ConnectionDirection.before,
                indicatorStyleBuilder: (context, index) =>
                    IndicatorStyle.outlined,
                connectorStyleBuilder: (context, index) =>
                    ConnectorStyle.solidLine,
                contentsAlign: size.width > 650
                    ? ContentsAlign.alternating
                    : ContentsAlign.basic,
                contentsBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: scheduleCard(
                      title: "Keynote Speech",
                      name: "Mr. Suneth Kotuthane",
                      position: "Engineer at Ansell Lanka Pvt Ltd"),
                ),
                nodePositionBuilder: (context, index) =>
                    size.width > 650 ? 0.5 : 0.02,
                indicatorPositionBuilder: (context, index) => 0.2,
                itemCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

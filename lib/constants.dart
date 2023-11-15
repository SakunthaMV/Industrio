import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:industrio_2023/pages/people/people_page.dart';
import 'package:industrio_2023/pages/posters/posters_page.dart';
import 'package:industrio_2023/pages/proceeding/proceeding_page.dart';
import 'package:industrio_2023/pages/projects/projects_page.dart';
import 'package:industrio_2023/pages/schedule/schedule_page.dart';

// Images
const String logo = 'images/logo.png';
const String homeBackground = 'images/home_background.jpg';
const String home_1 = 'images/home_1.jpg';
const String home_2 = 'images/home_2.jpg';
const String oc = 'images/oc.png';
const String suneth = 'images/suneth.jpg';
const String headingBackground = 'images/heading_background.jpg';

// Menu
const List<String> menuItems = [
  '/',
  SchedulePage.route,
  PeoplesPage.route,
  ProjectPage.route,
  PostersPage.route,
  ProceedingPage.route,
];

// OC Distribution
const List<String> ocDetails = [
  'Event Chair',
  'Event Coordinator',
  'Editorial Committee',
  'Publicity Committee',
  'Planning Committee',
];

// Speakers
const Map<String, dynamic> speakersDetails = {
  'Prof. Gamini Dissanayake': [
    'images/speakers/speaker1.png',
    'Emeritus Professor at University of Technology, Sydney',
  ],
  'Eng. Jagath Jayasundara': [
    'images/speakers/speaker2.png',
    'CEO of Abans Electricals PLC',
  ],
};

// SlideShow Duration
const int showDuration = 5000;
const int noOfImages = 5;

// App Bar
const double appBarHeight = 100.0;

// Home Content
const double contentHeight = 350.0;
const String whatIsIndustrio =
    'INDUSTRIO is the project symposium of the Department of '
    'Manufacturing and Industrial Engineering of University of '
    'Peradeniya. It presents the projects of the final year '
    'undergraduates of the department and gives valuable '
    'opportunities to share and gain knowledge from industry.';
const String ourTheme =
    'The sustainable concept is one of the leading concepts '
    'in modern industry and the world. This year we will discuss about '
    'how Manufacturing & Industrial engineers contribute to the sustainable '
    'transformation of the industry. Research projects will be presented '
    'under manufacturing engineering, manufacturing automation, '
    'logistics & supply chain, and life cycle assessment & management.';

// Department Details
const List<dynamic> dmieDetails = [
  [
    'Department of Manufacturing & Industrial '
        'Engineering, Faculty of Engineering, University of Peradeniya, '
        'Peradeniya, 20400, Sri Lanka.',
    Icons.location_on,
    'https://goo.gl/maps/EV7u3qx5GpNS9qyLA'
  ],
  ['+9481 2393 650', Icons.phone, 'tel:+94812393650'],
  [
    'headmie@eng.pdn.ac.lk',
    Icons.mail,
    "mailto:headmie@eng.pdn.ac.lk?subject=About the Symposium 2023 (INDUSTRIO)"
  ],
];

//Externel Links
const List<dynamic> linkDetails = [
  ['images/external_links/dmie.png', 'https://dmie.eng.pdn.ac.lk/'],
  ['images/external_links/foe.png', 'https://eng.pdn.ac.lk/'],
  ['images/external_links/uop.png', 'https://www.pdn.ac.lk/'],
  ['images/external_links/facebook.png', 'https://www.facebook.com/MEA.uop'],
  [
    'images/external_links/linkedin.png',
    'https://www.linkedin.com/company/manufacturing-engineering-association-mea/'
  ],
];

// Toast Massage
void toast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    textColor: Colors.black,
    timeInSecForIosWeb: 3,
    webPosition: "center",
    webBgColor: "linear-gradient(to right, #bbbfbf, #bbbfbf)",
  );
}

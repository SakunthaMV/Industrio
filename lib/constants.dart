import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:industrio_2023/pages/people/people_page.dart';
import 'package:industrio_2023/pages/proceeding/proceeding_page.dart';
import 'package:industrio_2023/pages/projects/projects_page.dart';
import 'package:industrio_2023/pages/schedule/schedule_page.dart';

// Images
const String logo = 'images/logo.png';
const String homeBackground = 'images/home_background.jpg';
const String homeBackgroundMobile = 'images/home_background_mobile.jpg';
const String home_1 = 'images/home_1.jpg';
const String home_2 = 'images/home_2.jpg';
const String oc = 'images/oc.png';
const String suneth = 'images/suneth.jpg';
const String headingBackground = 'images/heading_background.jpg';
const String proceedingCover = 'images/proceeding_cover.jpg';

// Menu
const List<String> menuItems = [
  '/',
  SchedulePage.route,
  PeoplesPage.route,
  ProjectPage.route,
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

// Keynote Speaker Details
String speakerDetails =
    '${' ' * 10}Mr. Suneth Kotuthenne is a highly accomplished professional '
    'in the field of manufacturing and industrial engineering with a strong '
    'academic foundation and a wealth of practical experience. He holds '
    'a Bachelor of Science (BSc) in Production Engineering with First '
    'Class Honors, earned from the University of Peradeniya, and has '
    'achieved a Master of Business Administration (MBA) with a focus '
    'on Business Administration and Management, from the University of '
    'Colombo. Mr. Kotuthenne has also attained qualifications in CIMA '
    '(Chartered Institute of Management Accountants) and supply chain '
    'management (CSCM).\n'
    '\n${' ' * 10}Throughout his illustrious career, Mr. Kotuthenne has '
    'contributed significantly to the field of manufacturing and industrial '
    'engineering. He has served as a guest lecturer at both the Moratuwa '
    'and Peradeniya Engineering faculties, where he imparts his knowledge '
    'in the subjects of operations management and finance, nurturing the '
    'next generation of engineering talent. Mr. Kotuthenne\'s commitment '
    'to the academic and industrial community is further exemplified by '
    'his involvement as a member of the Industry Advisory Board of the '
    'Department of Manufacturing Engineering at the University of Peradeniya.\n'
    '\n${' ' * 10}Currently, Mr. Suneth Kotuthenne serves as the Supply Chain '
    'Director at Hemas Pharmaceuticals/Surgical & Diagnostics (Pvt) Ltd., '
    'playing a pivotal role in optimizing supply chain operations within the '
    'organization. Prior to his current role, Mr. Kotuthenne held the '
    'position of Associate Director Manufacturing at Ansell, overseeing '
    'manufacturing operations and driving strategic growth projects in the '
    'field of supply chain in Sri Lanka and Bangladesh. Previously, he '
    'served as Vice President Supply Chain at Analytical Instruments (Pvt) '
    'Ltd., showcasing his expertise in supply chain management. Mr. '
    'Kotuthenne has also contributed his valuable experience at Unilever, '
    'holding various positions, including factory manager, adding to his '
    'diverse portfolio in the field of manufacturing and industrial '
    'engineering.\n'
    '\n${' ' * 10}His extensive knowledge and leadership roles in various '
    'organizations, along with his dedication to education and industry '
    'collaboration, make him a valuable asset.';

// Proceeding Details
const String proceedingsDetails =
    'INDUSTRIO is the project symposium of the Department of Manufacturing '
    'and Industrial Engineering of University of Peradeniya. It presents the '
    'projects of the final year undergraduates of the department and gives '
    'valuable opportunities to share and gain knowledge from industry '
    'and academic experts.';

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

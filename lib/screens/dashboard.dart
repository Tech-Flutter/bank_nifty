import 'package:bank_nifty/screens/home.dart';
import 'package:bank_nifty/screens/webpage.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  String url = 'Text';

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: MyStatefulWidget()));
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int selectedPage = 0;

  final _pageOptions = [
    Home(),
    WebPage(
      url: 'https://bankniftysignals.com/indicators/',
    ),
    WebPage(
      url: 'https://bankniftysignals.com/indicators/',
    ),
    WebPage(
      url: 'https://bankniftysignals.com/video-lessons/',
    ),
    WebPage(
      url: 'https://bankniftysignals.com/webinar/',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.date_range), label: 'Signals'),
            BottomNavigationBarItem(
                icon: Icon(Icons.drag_indicator_sharp), label: 'Indicators'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined), label: 'Lessons'),
            BottomNavigationBarItem(
                icon: Icon(Icons.live_tv_rounded), label: 'Webinar'),
          ],
          elevation: 5.0,
          currentIndex: selectedPage,
          backgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class BottomNavigationBarWidget extends BaseSampleStatefulWidget {
  static String name = 'BottomNavigationBar';
  static String route = '/ui/BottomNavigationBar';

  @override
  BaseSampleStatefulWidgetState createState() => _BottomNavigationBarWidget();
}

class _BottomNavigationBarWidget extends BaseSampleStatefulWidgetState<BottomNavigationBarWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/bottom_navigation_bar_widget.dart';
  }

  @override
  String getTitle() {
    return BottomNavigationBarWidget.name;
  }

  //<code>

  int _selectedIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget buildBody(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: <Widget>[
          Text(
            '$_selectedIndex',
            style: TextStyle(fontSize: 40),
          ),
          Text(
            '$_selectedIndex',
            style: TextStyle(fontSize: 40),
          ),
          Text(
            '$_selectedIndex',
            style: TextStyle(fontSize: 40),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pinkAccent.withOpacity(0.5),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });

          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          );
        },
      ),
    );
  }
//<code>
}

import 'package:badges/badges.dart';
import 'package:closer_bottom_navigation_bar/chatting/chatting_page.dart';
import 'package:closer_bottom_navigation_bar/screens/date_screen.dart';
import 'package:closer_bottom_navigation_bar/screens/home_screen.dart';
import 'package:closer_bottom_navigation_bar/screens/story_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showSettingsPanel(context) {
    showBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              child: GridView.count(
                crossAxisCount: 6,
                children: [
                  Card(
                    color: Colors.red,
                  ),
                  Card(
                    color: Colors.blue,
                  ),
                  Card(
                    color: Colors.amber,
                  ),
                  Card(
                    color: Colors.yellow,
                  ),
                  Card(
                    color: Colors.purple,
                  ),
                  Card(
                    color: Colors.greenAccent,
                  ),
                ],
              ));
        });
  }

  static int _counter = 0;

  static int _selectedIndex = 0;

  static List<Widget> _screens = <Widget>[
    HomeScreen(),
    DateScreen(),
    ChattingPage(),
    StoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _screens),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: buildBottomNavigationBar(),
            flex: 1,
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).padding.bottom, right: 16),
            child: Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => _showSettingsPanel(context),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedFontSize: 12,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blueAccent,
        currentIndex: _selectedIndex,
        onTap: _onBtmItemClick,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          homeNaviButton(),
          dateNaviButton(),
          chatNaviButton(),
          storyNaviButton(),
        ]);
  }

  BottomNavigationBarItem addNaviButton() {
    return BottomNavigationBarItem(
        icon: Icon(Icons.add, size: 20), label: ('더 보기'));
  }

  BottomNavigationBarItem storyNaviButton() {
    return BottomNavigationBarItem(
        icon: Icon(Icons.photo_library_outlined, size: 20), label: ('스토리'));
  }

  BottomNavigationBarItem chatNaviButton() {
    return BottomNavigationBarItem(
      label: ('채팅'),
      icon: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Icon(
                Icons.chat,
                color: Colors.black,
                size: 20,
              ),
              Positioned(
                right: -10.0,
                top: -10.0,
                child: Badge(
                  position: BadgePosition.topEnd(),
                  animationDuration: Duration(milliseconds: 300),
                  animationType: BadgeAnimationType.slide,
                  badgeContent: Align(
                    alignment: Alignment.center,
                    child: Text(
                      _counter.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem dateNaviButton() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.map, size: 20),
      label: ('데이트'),
    );
  }

  BottomNavigationBarItem homeNaviButton() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.home, size: 20),
      label: ('홈'),
      backgroundColor: Colors.black,
    );
  }

  void _onBtmItemClick(int index) {
    print('$index 번 째 화면입니다.');
    setState(() {
      _selectedIndex = index;
    });
  }
}

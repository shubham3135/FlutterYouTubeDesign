import 'package:flutter/material.dart';
import 'package:youtube_design/screens/explore_screen.dart';
import 'package:youtube_design/screens/home_screen.dart';
import 'package:youtube_design/screens/library_screen.dart';
import 'package:youtube_design/screens/subscrition_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  var screen = <Widget>[
    HomeScreen(),
    ExploreScreen(),
    Container(),
    SubscriptionScreen(),
    LibraryScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      if (index == 2) {
        displayBottomSheet(context);
      } else {
        _selectedIndex = index;
      }
    });
  }

  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), topLeft: Radius.circular(16)),
        ),
        context: context,
        builder: (ctx) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Create',
                        style: TextStyle(fontSize: 20),
                      ),
                      IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            Navigator.pop(context);
                          })
                    ],
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.black12,
                    child: Icon(
                      Icons.upload_rounded,
                      color: Colors.black,
                    ),
                  ),
                  title: Text(
                    'Upload a video',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.black12,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                    ),
                  ),
                  title: Text(
                    'Create a Short',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Text(
                    'Beta',
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Color(0xFF253595),
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.black12,
                    child: Icon(
                      Icons.wifi_tethering_sharp,
                      color: Colors.black,
                    ),
                  ),
                  title: Text(
                    'Go live',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          elevation: 8,
          selectedFontSize: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: 'Home',
              activeIcon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore_outlined,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.explore,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                size: 50,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.subscriptions_outlined,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.subscriptions,
              ),
              label: 'Subscription',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library_outlined,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.video_library,
              ),
              label: 'Library',
            ),
          ],
        ));
    // );
  }
}

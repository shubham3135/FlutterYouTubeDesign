import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_design/screens/library_screen.dart';
import 'package:youtube_design/views/explore.dart';
import 'package:youtube_design/views/home.dart';
import 'package:youtube_design/views/subscrition.dart';
import 'package:youtube_design/widgets/appbar/custom_mobile_appbar.dart';
import 'package:youtube_design/widgets/video_list/video_list_mobile.dart';

class HomeViewMobile extends StatefulWidget {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  _HomeViewMobileState createState() => _HomeViewMobileState();
}

class _HomeViewMobileState extends State<HomeViewMobile> {
  int _selectedIndex = 0;

  var screen = <Widget>[
    Home(),
    Explore(),
    Container(),
    Subscription(),
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
      body: _selectedIndex != 4
          ? CustomScrollView(
              slivers: [
                CustomMobileAppbar(),
                screen[_selectedIndex],
                VideoListMobile(),
              ],
            )
          : screen[_selectedIndex],
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
            activeIcon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.compass,
              color: Colors.black,
            ),
            activeIcon: Icon(
              CupertinoIcons.compass_fill,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.add_circled,
              size: 50,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.play_rectangle,
              color: Colors.black,
            ),
            activeIcon: Icon(
              CupertinoIcons.play_rectangle_fill,
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
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_design/widgets/nav_item/side_nav_item_desktop.dart';
import 'package:youtube_design/widgets/side_bar/tablet_side_bar.dart';

class DesktopSideBar extends StatefulWidget {
  final bool selected;
  const DesktopSideBar({Key? key, this.selected = true}) : super(key: key);

  @override
  _DesktopSideBarState createState() => _DesktopSideBarState();
}

class _DesktopSideBarState extends State<DesktopSideBar> {
  @override
  Widget build(BuildContext context) {
    return widget.selected
        ? Container(
            width: 240.0,
            child: ListView(
              children: [
                const SizedBox(height: 10),
                SideNavItemDesktop(
                    icon: Icon(Icons.home, color: Colors.red), title: 'Home'),
                SideNavItemDesktop(
                    icon: Icon(Icons.explore, color: Colors.black54),
                    title: 'Explore'),
                SideNavItemDesktop(
                    icon: Icon(Icons.subscriptions, color: Colors.black54),
                    title: 'Subscriptions'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(height: 1, color: Colors.grey[300]),
                ),
                SideNavItemDesktop(
                    icon: Icon(Icons.video_library, color: Colors.black54),
                    title: 'Library'),
                SideNavItemDesktop(
                    icon: Icon(Icons.history, color: Colors.black54),
                    title: 'History'),
                SideNavItemDesktop(
                    icon: Icon(CupertinoIcons.play_rectangle,
                        color: Colors.black54),
                    title: 'Your videos'),
                SideNavItemDesktop(
                    icon: Icon(Icons.access_time_filled_sharp,
                        color: Colors.black54),
                    title: 'Watch later'),
                SideNavItemDesktop(
                    icon: Icon(Icons.playlist_play, color: Colors.black54),
                    title: 'The Food Delivery...'),
                SideNavItemDesktop(
                    icon:
                        Icon(Icons.keyboard_arrow_down, color: Colors.black54),
                    title: 'Show more'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(height: 1, color: Colors.grey[300]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    'SUBSCRIPTIONS',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                ),
                SideNavItemDesktop(
                    icon: CircleAvatar(
                      backgroundImage: ExactAssetImage("assets/pic1.jpg"),
                      backgroundColor: Colors.black,
                      radius: 10,
                    ),
                    title: 'Philipp Lackner'),
                SideNavItemDesktop(
                    icon: CircleAvatar(
                      backgroundImage: ExactAssetImage("assets/pic2.jpg"),
                      backgroundColor: Colors.black,
                      radius: 10,
                    ),
                    title: 'Simplified Coding'),
                SideNavItemDesktop(
                    icon: CircleAvatar(
                      backgroundImage: ExactAssetImage("assets/pic3.jpg"),
                      backgroundColor: Colors.black,
                      radius: 10,
                    ),
                    title: 'Shubham Class'),
                SideNavItemDesktop(
                    icon: CircleAvatar(
                      backgroundImage: ExactAssetImage("assets/pic4.jpg"),
                      backgroundColor: Colors.black,
                      radius: 10,
                    ),
                    title: 'Coding Dot'),
                SideNavItemDesktop(
                    icon: CircleAvatar(
                      backgroundImage: ExactAssetImage("assets/pic5.jpg"),
                      backgroundColor: Colors.black,
                      radius: 10,
                    ),
                    title: 'CodeX'),
                SideNavItemDesktop(
                    icon: CircleAvatar(
                      backgroundImage: ExactAssetImage("assets/pic6.jpg"),
                      backgroundColor: Colors.black,
                      radius: 10,
                    ),
                    title: 'Glow Up'),
                SideNavItemDesktop(
                    icon: CircleAvatar(
                      backgroundImage: ExactAssetImage("assets/pic7.jpg"),
                      backgroundColor: Colors.black,
                      radius: 10,
                    ),
                    title: 'Flutter'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(height: 1, color: Colors.grey[300]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    'MORE FROM YOUTUBE',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                ),
                SideNavItemDesktop(
                    icon: Icon(CupertinoIcons.play_rectangle_fill,
                        color: Colors.black54),
                    title: 'YouTube Premium'),
                SideNavItemDesktop(
                    icon: Icon(Icons.local_movies_sharp, color: Colors.black54),
                    title: 'Films'),
                SideNavItemDesktop(
                    icon: Icon(Icons.videogame_asset, color: Colors.black54),
                    title: 'Gaming'),
                SideNavItemDesktop(
                    icon:
                        Icon(Icons.wifi_tethering_sharp, color: Colors.black54),
                    title: 'Live'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(height: 1, color: Colors.grey[300]),
                ),
              ],
            ))
        : TabletSideBar();
  }
}

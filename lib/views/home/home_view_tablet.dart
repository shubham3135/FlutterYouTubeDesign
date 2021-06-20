import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_design/widgets/nav_item/side_nav_item_desktop.dart';
import 'package:youtube_design/widgets/side_bar/tablet_side_bar.dart';
import 'package:youtube_design/widgets/video_list/video_list_tablet.dart';

class HomeViewTablet extends StatefulWidget {
  const HomeViewTablet({Key? key}) : super(key: key);

  @override
  _HomeViewTabletState createState() => _HomeViewTabletState();
}

class _HomeViewTabletState extends State<HomeViewTablet> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0.0,
        leading: Row(
          children: [
            SizedBox(width: 15),
            IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
            ),
            const SizedBox(
              width: 10.0,
            ),
            Container(
              child: Image.asset('assets/youtube.png'),
              height: 22,
            ),
            const SizedBox(width: 20),
          ],
        ),
        leadingWidth: 185.0,
        title: Container(
          width: MediaQuery.of(context).size.width - 500,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width / 25),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.zero),
                    ),
                  ),
                ),
              ),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, side: BorderSide.none),
                    backgroundColor: Colors.grey[100]),
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                onPressed: () {},
                label: Text(''),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: IconButton(
                    icon: Icon(
                      CupertinoIcons.mic_fill,
                      color: Colors.black,
                    ),
                    onPressed: () {}),
              ),
              SizedBox(width: MediaQuery.of(context).size.width / 25)
            ],
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(
                Icons.video_call,
                color: Colors.black,
              ),
              onPressed: () {}),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: IconButton(
                icon: Icon(
                  CupertinoIcons.circle_grid_3x3_fill,
                  color: Colors.black,
                ),
                onPressed: () {}),
          ),
          IconButton(
              icon: Icon(
                CupertinoIcons.bell_fill,
                color: Colors.black,
              ),
              onPressed: () {}),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: IconButton(
              icon: CircleAvatar(
                radius: 13,
                backgroundImage: ExactAssetImage('assets/pic0.jpg'),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TabletSideBar(),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 1,
                  color: Colors.black12,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 9, horizontal: 4),
                  height: 55,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      chips('All', select: true, color: Colors.white),
                      chips('Live'),
                      chips('Flutter'),
                      chips('Cricket'),
                      chips('Motivation'),
                      chips('Android Studio'),
                      chips('Python'),
                      chips('Rohit Sharma'),
                      chips('Cryptocurrency'),
                      chips('Mukesh Ambani'),
                      chips('Virat Kohli'),
                      chips('Security hackers'),
                      chips('Gadgets'),
                      chips('Google'),
                      chips('Website'),
                      chips('Comedy'),
                      chips('Balls'),
                      chips('Lectures'),
                      chips('Music'),
                      chips('Recently uploaded'),
                      chips('Watched'),
                      TextButton(onPressed: () {}, child: Text('SEND FEEDBACK'))
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Colors.black12,
                ),
                Expanded(child: VideoListTablet()),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Row(
              children: [
                SizedBox(width: 15),
                IconButton(
                  icon: Icon(Icons.menu),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Container(
                  child: Image.asset('assets/youtube.png'),
                  height: 22,
                ),
                const SizedBox(width: 20),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(height: 1, color: Colors.grey[300]),
            ),
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
                icon:
                    Icon(CupertinoIcons.play_rectangle, color: Colors.black54),
                title: 'Your videos'),
            SideNavItemDesktop(
                icon:
                    Icon(Icons.access_time_filled_sharp, color: Colors.black54),
                title: 'Watch later'),
            SideNavItemDesktop(
                icon: Icon(Icons.playlist_play, color: Colors.black54),
                title: 'The Food Delivery...'),
            SideNavItemDesktop(
                icon: Icon(Icons.keyboard_arrow_down, color: Colors.black54),
                title: 'Show more'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(height: 1, color: Colors.grey[300]),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                'SUBSCRIPTIONS',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
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
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                'MORE FROM YOUTUBE',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
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
                icon: Icon(Icons.wifi_tethering_sharp, color: Colors.black54),
                title: 'Live'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(height: 1, color: Colors.grey[300]),
            ),
          ],
        ),
      ),
    );
  }

  Widget chips(String text, {Color color = Colors.black, bool select = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: ChoiceChip(
        selected: select,
        selectedColor: Colors.black,
        labelStyle: TextStyle(color: color),
        label: Text(
          '$text',
        ),
      ),
    );
  }
}

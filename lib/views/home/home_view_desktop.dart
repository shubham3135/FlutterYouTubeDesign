import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_design/widgets/side_bar/desktop_side_bar.dart';
import 'package:youtube_design/widgets/video_list/video_list_tablet.dart';

class HomeViewDesktop extends StatefulWidget {
  const HomeViewDesktop({Key? key}) : super(key: key);

  @override
  _HomeViewDesktopState createState() => _HomeViewDesktopState();
}

class _HomeViewDesktopState extends State<HomeViewDesktop> {
  bool _selected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Row(
          children: [
            SizedBox(width: 15),
            IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {
                setState(() {
                  _selected = !_selected;
                });
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
              SizedBox(width: 100),
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
              SizedBox(width: 100),
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
          DesktopSideBar(
            selected: _selected,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 1,
                  color: Colors.black12,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 5),
                  height: 55,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
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
                        TextButton(
                            onPressed: () {}, child: Text('SEND FEEDBACK'))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  color: Colors.black12,
                ),
                Expanded(child: VideoListTablet())
              ],
            ),
          ),
        ],
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

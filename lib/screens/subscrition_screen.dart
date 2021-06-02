import 'package:flutter/material.dart';

import 'item.dart';

class SubscriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: false,
          floating: true,
          snap: true,
          flexibleSpace: AppBar(
            title: Container(
              child: Image.asset('assets/youtube.png'),
              height: 22,
            ),
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.cast,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
              IconButton(
                icon: CircleAvatar(
                  radius: 13,
                  backgroundImage: ExactAssetImage('assets/pic0.jpg'),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                // padding: EdgeInsets.symmetric(vertical: 5),
                height: 112,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            subItem('Shubham', 0),
                            subItem('MTech', 1),
                            subItem('Codex', 2),
                            subItem('Philipp', 3),
                            subItem('Smartherd', 4),
                            subItem('Android', 5),
                            subItem('Sandeep', 6),
                            subItem('Dr. Vivek', 7),
                            subItem('Coding in', 8),
                            subItem('Flutter', 9),
                          ],
                        ),
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text('All'))
                  ],
                ),
              ),
              Container(
                height: 1,
                color: Colors.black12,
              ),
              Container(
                color: Colors.white,
                height: 55,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    chips('All videos', color: Colors.white, select: true),
                    chips('Today'),
                    chips('Continue watching'),
                    chips('Unwatched'),
                    chips('Live'),
                    chips('Posts'),
                    TextButton(onPressed: () {}, child: Text('SETTINGS'))
                  ],
                ),
              ),
              Container(
                height: 1,
                color: Colors.black12,
              ),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Item(imagePath: index);
            },
            childCount: 29,
          ),
        ),
      ],
    );
  }

  Widget chips(String text, {Color color = Colors.black, bool select = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: ChoiceChip(
        selected: select,
        selectedColor: Colors.black,
        label: Text('$text', style: TextStyle(color: color)),
      ),
    );
  }

  Widget subItem(String text, int imgNo) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: CircleAvatar(
              backgroundImage: ExactAssetImage("assets/pic$imgNo.jpg"),
              backgroundColor: Colors.black,
              radius: 27,
            ),
          ),
          Text(text)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'item.dart';

class HomeScreen extends StatelessWidget {
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
                padding: EdgeInsets.symmetric(vertical: 5),
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Card(
                          elevation: 0.0,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Center(
                                child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0.0,
                                      top: 5.0,
                                      bottom: 5.0,
                                      right: 5.0),
                                  child:
                                      Image.asset('assets/youtube-shorts.png'),
                                ),
                                Text('Shorts'),
                              ],
                            )),
                          ),
                          color: Colors.grey[200],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Container(
                          color: Colors.black12,
                          width: 1,
                        ),
                      ),
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
              ),
              Container(
                height: 1,
                color: Colors.black12,
              )
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
        labelStyle: TextStyle(color: color),
        label: Text(
          '$text',
        ),
      ),
    );
  }
}

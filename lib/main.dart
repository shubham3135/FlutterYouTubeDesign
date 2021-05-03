import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: CustomScrollView(
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
            child: Container(
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
                                child: Image.asset('assets/youtube-shorts.png'),
                              ),
                              Text('Shorts'),
                            ],
                          )),
                        ),
                        color: Colors.grey[200],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                      child: Container(
                        color: Colors.black12,
                        width: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: true,
                        selectedColor: Colors.black,
                        label:
                            Text('All', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Live'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Flutter'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Cricket'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Motivation'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Android Studio'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Python'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Rohit Sharma'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Cryptocurrency'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Mukesh Ambani'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Virat Kohli'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Security hackers'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Gadgets'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Google'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Website'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Comedy'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Balls'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Lectures'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Music'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Recently uploaded'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        selected: false,
                        label: Text('Watched'),
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text('SEND FEEDBACK'))
                  ],
                ),
              ),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          print('Hii $index');
        },
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        selectedFontSize: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
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
              color: Colors.black,
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
              color: Colors.black,
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
              color: Colors.black,
            ),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  final int imagePath;

  const Item({Key key, this.imagePath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: ExactAssetImage(
                    "assets/pic$imagePath.jpg",
                  ),
                ),
              )),
          ListTile(
            leading: IconButton(
              alignment: Alignment.topCenter,
              icon: CircleAvatar(
                backgroundImage: ExactAssetImage("assets/pic$imagePath.jpg"),
                backgroundColor: Colors.black,
              ),
              onPressed: () {},
            ),
            title: Text(
              'Watch: Shubham slams Rahul',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
            subtitle: Text(
              'Hindustan Times . ${imagePath + 3}1K views . ${30 - imagePath} days ago',
              style: TextStyle(fontSize: 12),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.more_vert,
                size: 15,
              ),
              onPressed: () {},
              alignment: Alignment.topRight,
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
          )
        ],
      ),
    );
  }
}

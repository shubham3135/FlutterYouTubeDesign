import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTabletAppbar extends StatelessWidget {
  const CustomTabletAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: Row(
        children: [
          SizedBox(width: 15),
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {},
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
                    border: OutlineInputBorder(borderRadius: BorderRadius.zero),
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
            SizedBox(width: MediaQuery.of(context).size.width / 25),
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
    );
  }
}

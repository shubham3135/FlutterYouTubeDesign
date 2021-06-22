import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomMobileAppbar extends StatelessWidget {
  const CustomMobileAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: true,
      snap: true,
      flexibleSpace: AppBar(
        title: Container(
          child: Image.asset('assets/youtube.png'),
          height: 22,
        ),
        backgroundColor: Colors.white,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.grey[400],
            statusBarIconBrightness: Brightness.light),
        actions: [
          IconButton(
              icon: Icon(
                Icons.cast,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                CupertinoIcons.bell,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                CupertinoIcons.search,
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
    );
  }
}

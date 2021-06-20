import 'package:flutter/material.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

class Item extends StatelessWidget {
  final int? imagePath;

  const Item({Key? key, this.imagePath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Card(
      elevation: width < 800 ? 5.0 : 0.0,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: width < 800 ? 200 : 150,
            child: PinchZoom(
              image: Image.asset(
                "assets/pic$imagePath.jpg",
                fit: BoxFit.cover,
              ),
              zoomedBackgroundColor: Colors.black.withOpacity(0),
              resetDuration: const Duration(milliseconds: 100),
              maxScale: 5,
            ),
          ),
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
                  fontSize: width < 800 ? 14 : 12,
                  fontWeight: FontWeight.w700),
            ),
            subtitle: Text(
              'Hindustan Times . ${imagePath! + 3}1K views . ${30 - imagePath!} days ago',
              style: TextStyle(fontSize: width < 800 ? 12 : 10),
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

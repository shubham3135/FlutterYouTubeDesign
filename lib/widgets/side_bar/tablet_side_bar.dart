import 'package:flutter/material.dart';
import 'package:youtube_design/widgets/nav_item/side_nav_item_tablet.dart';

class TabletSideBar extends StatelessWidget {
  const TabletSideBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      child: Container(
        width: 70.0,
        child: Column(
          children: [
            const SizedBox(height: 10),
            SideNavItemTablet(
              icon: Icons.home,
              title: 'Home',
              color: Colors.red,
            ),
            SideNavItemTablet(icon: Icons.explore, title: 'Explore'),
            SideNavItemTablet(
                icon: Icons.subscriptions, title: 'Subscriptions'),
            SideNavItemTablet(icon: Icons.video_library, title: 'Library'),
          ],
        ),
      ),
    );
  }
}

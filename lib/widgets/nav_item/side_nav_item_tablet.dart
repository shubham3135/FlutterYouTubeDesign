import 'package:flutter/material.dart';

class SideNavItemTablet extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  const SideNavItemTablet(
      {Key? key,
      required this.icon,
      required this.title,
      this.color = Colors.black54})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('Clicked'),
      child: Container(
        width: 65.0,
        height: 70.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: color,
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 10, color: color),
            ),
          ],
        ),
      ),
    );
  }
}

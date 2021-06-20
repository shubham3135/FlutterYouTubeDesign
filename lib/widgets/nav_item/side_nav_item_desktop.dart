import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideNavItemDesktop extends StatelessWidget {
  final Widget icon;
  final String title;
  const SideNavItemDesktop({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('Clicked'),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon,
              const SizedBox(
                width: 20.0,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

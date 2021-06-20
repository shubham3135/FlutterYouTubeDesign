import 'package:flutter/material.dart';
import 'package:youtube_design/responsive/responsive_builder.dart';
import 'package:youtube_design/responsive/screen_type_layout.dart';

import 'home_view_desktop.dart';
import 'home_view_mobile.dart';
import 'home_view_tablet.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: HomeViewMobile(),
          tablet: HomeViewTablet(),
          desktop: HomeViewDesktop(),
        );
      },
    );
  }
}

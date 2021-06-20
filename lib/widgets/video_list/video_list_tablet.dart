import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../item.dart';

class VideoListTablet extends StatelessWidget {
  const VideoListTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ResponsiveGridList(
            desiredItemWidth:
                math.min(250, MediaQuery.of(context).size.width - (2 * 15)),
            children: [
              0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23,
              24,
              25,
              26,
              27,
              28
            ].map((i) {
              return Item(
                imagePath: i,
              );
            }).toList()),
      ),
    );
  }
}

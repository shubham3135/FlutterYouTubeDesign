import 'package:flutter/material.dart';
import 'package:youtube_design/widgets/item.dart';

class VideoListMobile extends StatelessWidget {
  const VideoListMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 5.0),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Item(imagePath: index);
          },
          childCount: 29,
        ),
      ),
    );
  }
}

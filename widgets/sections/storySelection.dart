import 'package:flutter/material.dart';

import '../assets.dart';
import '../widgets/storyCard.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to story",
            story: ylw,
            avatar: ylw,
            createStoryStatus: true,
          ),
          StoryCard(
              labelText: "Batman is insane",
              story: bat,
              avatar: sup,
              stborder: true,
              createStoryStatus: false),
          StoryCard(
            labelText: "superman is weird!",
            story: sup,
            avatar: bat,
            createStoryStatus: false,
            stborder: true,
          ),
          StoryCard(
              labelText: "This is nuts.",
              story: red,
              avatar: red,
              stborder: true,
              createStoryStatus: false),
          StoryCard(
              labelText: "hey scarlet !!",
              story: red,
              stborder: true,
              avatar: bat,
              createStoryStatus: false),
        ],
      ),
    );
  }
}
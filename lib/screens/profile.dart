import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.keyboard_arrow_down_sharp,
          size: 30,
          // color: color.onPrimary,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: SvgPicture.asset(
              'assets/icons/playlist_menu.svg',
              // color: color.onPrimary,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        children: [
          const SizedBox(
            height: 20,
          ),
          // ),
          Center(
            child: Image.asset(
              'assets/images/ai.PNG',
              width: 450,
              height: 500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),

        ],
      ),
    );
  }
}

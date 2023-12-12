import 'package:flutter/material.dart';
import 'package:flutter_uis/ui_screens/instagram/widgets/body_widget.dart';

import 'widgets/bottom_app_bar_widget.dart';

class InstagramUI extends StatelessWidget {
  const InstagramUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: Colors.black,
        actions: [
          const Icon(
            Icons.favorite_border_outlined,
            color: Colors.white,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.035,
            ),
          ),
          const Icon(
            Icons.send_outlined,
            color: Colors.white,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.035,
            ),
          ),
        ],
        title: Row(
          children: [
            const Text(
              'For You',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            const Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBarWidget(),
      body: const BodyWidget(),
    );
  }
}

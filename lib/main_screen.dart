import 'package:flutter/material.dart';
import 'package:flutter_uis/ui_screens/instagram_ui.dart';

import 'core_widgets/ui_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Choose UI',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 40,
            fontStyle: FontStyle.italic,
            shadows: [
              Shadow(
                blurRadius: 15,
                color: Colors.pinkAccent,
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: const FittedBox(
              fit: BoxFit.cover,
              child: Image(
                image: AssetImage('assets/images/bg.jpg'),
              ),
            ),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.height * 0.05,
              ),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  UIWidget(
                    name: 'Instagram',
                    asset: 'instagram.png',
                    route: InstagramUI(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

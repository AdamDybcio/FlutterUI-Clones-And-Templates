import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 5,
      height: MediaQuery.of(context).size.height * 0.06,
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.width * 0.01,
      ),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: const Icon(
                Icons.add_outlined,
                size: 25,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.ondemand_video_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/instagram/person1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

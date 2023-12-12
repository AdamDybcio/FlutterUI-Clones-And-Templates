import 'package:flutter/material.dart';

class BgWidget extends StatelessWidget {
  const BgWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const FittedBox(
        fit: BoxFit.cover,
        child: Image(
          image: AssetImage('assets/images/bg.jpg'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class UIWidget extends StatelessWidget {
  final String name;
  final String asset;
  final Widget route;
  const UIWidget({
    super.key,
    required this.name,
    required this.asset,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white,
          radius: 20,
          borderRadius: BorderRadius.circular(25),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => route,
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              border: Border.all(
                color: Colors.pink,
                width: 3,
              ),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 30,
                  color: Colors.white,
                ),
              ],
              borderRadius: BorderRadius.circular(
                25,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        shadows: [
                          Shadow(
                            blurRadius: 5,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.height * 0.1,
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                      color: Colors.deepPurple,
                    ),
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.purple,
                      )
                    ],
                  ),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image(
                      image: AssetImage('assets/images/$asset'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

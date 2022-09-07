import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;

  const BackgroundWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 20,
            right: -30,
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blueAccent),
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: Text('dibujar'),
          ),
          SingleChildScrollView(scrollDirection: Axis.vertical, child: child)
        ],
      ),
    );
  }
}

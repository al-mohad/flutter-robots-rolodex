import 'package:flutter/material.dart';
import 'package:robots_rolodex/models/robot.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.robot,
  }) : super(key: key);

  final Robot robot;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
              colors: [Colors.indigo, Colors.transparent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(bounds);
          },
          child: Image(
            height: MediaQuery.of(context).size.height / 3,
            fit: BoxFit.cover,
            image: const NetworkImage(
              'https://images.unsplash.com/photo-1582571352032-448f7928eca3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cm9ib3RzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
            ),
          ),
        ),
        Positioned(
          bottom: -50.0,
          child: Hero(
            tag: robot.id,
            child: Image.network(
              'https://robohash.org/${robot.id}',
              height: 300,
            ),
          ),
        ),
      ],
    );
  }
}

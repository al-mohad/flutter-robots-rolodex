import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robots_rolodex/models/robot.dart';

class GeoWidget extends StatelessWidget {
  const GeoWidget({
    Key? key,
    required this.robot,
  }) : super(key: key);

  final Robot robot;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Geo',
        style: GoogleFonts.merienda(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        robot.geo['lat'] + ' ' + robot.geo['lng'],
        style: GoogleFonts.merienda(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

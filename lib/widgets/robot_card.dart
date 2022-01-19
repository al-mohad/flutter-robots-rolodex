import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robots_rolodex/models/robot.dart';
import 'package:robots_rolodex/screens/robot_details_screen.dart';
import 'package:robots_rolodex/utilities/constants.dart';

class RobotCard extends StatelessWidget {
  final Robot robot;
  const RobotCard({
    Key? key,
    required this.robot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (_) => RobotDetailsScreen(robot: robot),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ColorPalette.darkPurple,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: ColorPalette.lightPurple,
              offset: const Offset(-4, -4),
              blurRadius: 5,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: ColorPalette.deepPurple,
              offset: const Offset(4, 4),
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: robot.id,
              child: Image.network(
                'https://robohash.org/${robot.id}',
                height: 80,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              robot.name,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                color: Colors.white,
              ),
            ),
            Text(
              robot.company['name'],
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                color: Colors.white,
              ),
            ),
            Text(
              robot.website,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

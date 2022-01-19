import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robots_rolodex/models/robot.dart';
import 'package:robots_rolodex/utilities/constants.dart';

class RobotInfoWidget extends StatelessWidget {
  const RobotInfoWidget({
    Key? key,
    required this.robot,
  }) : super(key: key);

  final Robot robot;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(10),
      decoration: kBoxDecoration.copyWith(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        title: Center(
          child: Text(
            robot.name,
            style: GoogleFonts.merienda(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        subtitle: Center(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  const Icon(
                    FontAwesomeIcons.university,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    robot.company['name'],
                    style: GoogleFonts.merienda(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  const Icon(
                    FontAwesomeIcons.discourse,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 15),
                  Flexible(
                    child: Text(
                      robot.company['catchPhrase'],
                      style: GoogleFonts.merienda(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  const Icon(
                    FontAwesomeIcons.fileAlt,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    robot.company['bs'],
                    style: GoogleFonts.merienda(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

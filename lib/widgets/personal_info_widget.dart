import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robots_rolodex/models/robot.dart';
import 'package:robots_rolodex/utilities/constants.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({
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
        title: Text(
          'Personal Information',
          style: GoogleFonts.merienda(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              robot.username,
              style: GoogleFonts.merienda(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              robot.email,
              style: GoogleFonts.merienda(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              robot.phone,
              style: GoogleFonts.merienda(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              robot.website,
              style: GoogleFonts.merienda(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

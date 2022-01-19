import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robots_rolodex/models/robot.dart';
import 'package:robots_rolodex/utilities/constants.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({
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
          'Address',
          style: GoogleFonts.merienda(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                const Icon(
                  FontAwesomeIcons.houseUser,
                  color: Colors.white,
                ),
                const SizedBox(width: 15),
                Flexible(
                  child: Text(
                    robot.address['suite'] +
                        ' ' +
                        robot.address['street'] +
                        ', ' +
                        robot.address['city'],
                    style: GoogleFonts.merienda(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
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
                  FontAwesomeIcons.city,
                  color: Colors.white,
                ),
                const SizedBox(width: 15),
                Flexible(
                  child: Text(
                    robot.address['city'] + ' ' + robot.address['zipcode'],
                    style: GoogleFonts.merienda(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

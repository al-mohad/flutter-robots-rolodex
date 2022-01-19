import 'package:flutter/material.dart';
import 'package:robots_rolodex/models/robot.dart';
import 'package:robots_rolodex/utilities/constants.dart';
import 'package:robots_rolodex/widgets/address_widget.dart';
import 'package:robots_rolodex/widgets/geo_widget.dart';
import 'package:robots_rolodex/widgets/image_widget.dart';
import 'package:robots_rolodex/widgets/personal_info_widget.dart';
import 'package:robots_rolodex/widgets/robot_info_widget.dart';

class RobotDetailsScreen extends StatelessWidget {
  final Robot robot;
  const RobotDetailsScreen({
    Key? key,
    required this.robot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.darkPurple,
      appBar: AppBar(
        title: const Text('Robot Details'),
        backgroundColor: ColorPalette.darkPurple,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ImageWidget(robot: robot),
          const SizedBox(height: 45),
          RobotInfoWidget(robot: robot),
          const SizedBox(height: 20),
          PersonalInfoWidget(robot: robot),
          const SizedBox(height: 20),
          AddressWidget(robot: robot),
          const SizedBox(height: 15),
          robot.geo != null ? GeoWidget(robot: robot) : const SizedBox.shrink(),
        ],
      ),
    );
  }
}

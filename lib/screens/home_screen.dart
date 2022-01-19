import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robots_rolodex/services/api_service.dart';
import 'package:robots_rolodex/utilities/constants.dart';
import 'package:robots_rolodex/widgets/robot_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List? _robots;

  bool isLoading = false;
  bool showSearch = false;

  ApiService apiService = ApiService();

  searchRobot({required String name}) {
    List results = _robots!;
    if (name.isEmpty) {
      results = _robots!;
    } else {
      results = _robots!
          .where(
            (robot) => robot.name.toLowerCase().contains(
                  name.toLowerCase(),
                ),
          )
          .toList();
    }

    setState(() => _robots = results);
  }

  getRobots() async {
    setState(() => isLoading = true);
    _robots = await apiService.fetchRobots();
    setState(() => isLoading = false);
  }

  @override
  void initState() {
    super.initState();
    getRobots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.darkPurple,
      appBar: AppBar(
        backgroundColor: ColorPalette.darkPurple,
        title: showSearch
            ? CupertinoSearchTextField(
                onChanged: (value) => searchRobot(name: value.trim()),
              )
            : Text(
                'Robots Rolodex',
                style: GoogleFonts.montserrat(),
              ),
        actions: [
          IconButton(
            onPressed: () => setState(() => showSearch = !showSearch),
            icon: Icon(
              showSearch ? FontAwesomeIcons.robot : FontAwesomeIcons.search,
            ),
          )
        ],
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(
                value: 40,
                color: ColorPalette.lightPurple,
              ),
            )
          : GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: _robots!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (_, index) {
                return RobotCard(
                  robot: _robots!.elementAt(index),
                );
              },
            ),
    );
  }
}

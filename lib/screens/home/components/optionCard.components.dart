import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  const OptionCard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    bool isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    double textScaleFactor = MediaQuery.textScaleFactorOf(context);
    return SizedBox(
      height: screenHeight * 0.15,
      width: screenWidth * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          !isLandScape
              ? Text(
                  title,
                  style: TextStyle(
                      fontSize: 14 * textScaleFactor,
                      fontWeight: FontWeight.bold),
                )
              : Container(),
          Card(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 5.0, bottom: 5.0, right: 15.0),
              child: Icon(
                icon,
                size: 40,
                color: const Color(0xFF666AFC),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

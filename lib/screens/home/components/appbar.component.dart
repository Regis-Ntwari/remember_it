import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppBarComponent extends StatelessWidget {
  final double appBarHeight;
  const AppBarComponent({super.key, required this.appBarHeight});

  @override
  Widget build(BuildContext context) {
    final isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    final textScaleFactor = MediaQuery.textScaleFactorOf(context);
    return SizedBox(
      height: appBarHeight,
      width: double.infinity,
      child: Container(
        alignment: Alignment.centerLeft,
        color: const Color(0xFF666AFC),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: isLandScape
              ? const Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        color: Color(0xFF666AFC),
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person,
                              color: Color(0xFF666AFC),
                            ),
                          ),
                          Text(
                            DateFormat.MMMMEEEEd().format(DateTime.now()),
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: textScaleFactor * 11,
                                color: Colors.white),
                          ),
                          Text(
                            'Dashboard',
                            style: TextStyle(
                                fontSize: 14 * textScaleFactor,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ]),
                    SizedBox(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.settings),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}

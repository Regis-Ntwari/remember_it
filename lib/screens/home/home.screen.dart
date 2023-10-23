import 'package:flutter/material.dart';
import 'package:remember_it/screens/home/components/appbar.component.dart';
import 'package:remember_it/screens/home/components/optionCard.components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFF1F1F1),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.2),
          child: AppBarComponent(
            appBarHeight: screenHeight * 0.2,
          )),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            // list icon and calendar icon
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OptionCard(icon: Icons.list, title: 'List View'),
                  OptionCard(icon: Icons.calendar_month, title: 'Calendar View')
                ],
              ),
            ),

            // Project section
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Column(),
            )
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String color;
  final String title;
  final int count;
  const ProjectCard(
      {super.key,
      required this.color,
      required this.title,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 15, bottom: 5, top: 5),
      elevation: 4,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                children: [
                  Icon(Icons.note_add,
                      color: Color(int.parse(color.replaceAll('#', '0xFF')))),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(title),
                  )
                ],
              ),
            ),
            Text(count.toString())
          ],
        ),
      ),
    );
  }
}

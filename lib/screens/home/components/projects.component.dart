import 'package:flutter/material.dart';
import 'package:remember_it/screens/home/components/projectCard.component.dart';

class ProjectsComponent extends StatefulWidget {
  const ProjectsComponent({super.key});

  @override
  State<ProjectsComponent> createState() => _ProjectsComponentState();
}

class _ProjectsComponentState extends State<ProjectsComponent> {
  bool isProjectsVisible = true;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    const projects = [
      {'id': 1, 'title': 'Crash Course', 'color': '#173F71', 'count': 3},
      {'id': 2, 'title': 'Portfolio coding', 'color': '#707070', 'count': 4},
      {'id': 3, 'title': 'Remember it app', 'color': '#173F71', 'count': 1}
    ];
    double textScaleFactor = MediaQuery.textScaleFactorOf(context);
    return Column(
      children: [
        // project title and icons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Projects',
              style: TextStyle(
                  fontSize: 16 * textScaleFactor, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isProjectsVisible = !isProjectsVisible;
                      });
                    },
                    child: Icon(
                      isProjectsVisible
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_right,
                      size: 30,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Icon(
                    Icons.add,
                    size: 30,
                  ),
                )
              ],
            )
          ],
        ),

        //project listing
        isProjectsVisible
            ? SizedBox(
                height: screenHeight * 0.25,
                child: ListView.builder(
                  itemBuilder: ((context, index) {
                    return ProjectCard(
                        color: projects[index]['color'].toString(),
                        title: projects[index]['title'].toString(),
                        count: int.parse(projects[index]['count'].toString()));
                  }),
                  itemCount: projects.length,
                ),
              )
            : Container(),
      ],
    );
  }
}

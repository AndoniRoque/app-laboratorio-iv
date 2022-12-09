import 'package:flutter/material.dart';

import '../widgets/drawer_menu.dart';

class ListedSkillsPage extends StatelessWidget {
  final List _skills = [
    ['LOGIC', 'Intellect'],
    ['RHETORIC', 'Intellect'],
    ['ENCYCLOPEDIA', 'Intellect'],
    ['DRAMA', 'Intellect'],
    ['VISUAL CALCULUS', 'Intellect'],
    ['CONCEPTUALIZATION', 'Intellect'],
    ['VOLITION', 'Psyche'],
    ['EMPATHY', 'Psyche'],
    ['INLAND EMPIRE', 'Psyche'],
    ['AUTHORITY', 'Psyche'],
    ['SUGGESTION', 'Psyche'],
    ['ENDURANCE', 'Physique'],
    ['PHYSICAL INSTRUMENT', 'Physique'],
    ['PAIN THRESHOLD', 'Physique'],
    ['ELECTROCHEMISTRY', 'Physique'],
    ['HALF LIGHT', 'Physique'],
    ['HAND/EYE COORDINATION', 'Motorics'],
    ['REACTION SPEED', 'Motorics'],
    ['PERCEPTION', 'Motorics'],
    ['SAVOIR FAIRE', 'Motorics'],
    ['COMPOSURE', 'Motorics'],
  ];

  ListedSkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Skills'),
        ),
        drawer: DrawerMenu(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedOpacity(
            opacity: 1,
            duration: const Duration(milliseconds: 300),
            child: ListView.builder(
                itemCount: _skills.length,
                itemBuilder: (context, index) {
                  return Container(
                      height: 90,
                      width: 350,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 0,
                                offset: Offset(0, 5))
                          ]),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(_skills[index][0],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                  Text("Category: " + _skills[index][1],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Image.asset('assets/images/portrait_logic.webp'),
                          ]));
                }),
          ),
        ));
  }
}

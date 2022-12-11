import 'dart:developer';

import 'package:flutter/material.dart';

import '../widgets/drawer_menu.dart';

class ListedSkillsPage extends StatelessWidget {
  final List _skills = [
    ['1', 'LOGIC', 'Intellect', 'logic'],
    ['2', 'RHETORIC', 'Intellect', 'rhetoric'],
    ['3', 'ENCYCLOPEDIA', 'Intellect', 'logic'],
    ['4', 'DRAMA', 'Intellect', 'logic'],
    ['5', 'VISUAL CALCULUS', 'Intellect', 'logic'],
    ['6', 'CONCEPTUALIZATION', 'Intellect', 'logic'],
    ['7', 'VOLITION', 'Psyche', 'logic'],
    ['8', 'EMPATHY', 'Psyche', 'logic'],
    ['9', 'INLAND EMPIRE', 'Psyche', 'logic'],
    ['10', 'AUTHORITY', 'Psyche', 'logic'],
    ['11', 'SUGGESTION', 'Psyche', 'logic'],
    ['12', 'ESPIRIT DE CORPS', 'Pysche', 'logic'],
    ['13', 'ENDURANCE', 'Physique', 'logic'],
    ['14', 'PHYSICAL INSTRUMENT', 'Physique', 'logic'],
    ['15', 'PAIN THRESHOLD', 'Physique', 'logic'],
    ['16', 'ELECTROCHEMISTRY', 'Physique', 'logic'],
    ['17', 'SHIVERS', 'Physique', 'logic'],
    ['18', 'HALF LIGHT', 'Physique', 'logic'],
    ['19', 'HAND/EYE COORDINATION', 'Motorics', 'logic'],
    ['20', 'REACTION SPEED', 'Motorics', 'logic'],
    ['21', 'PERCEPTION', 'Motorics', 'logic'],
    ['22', 'SAVOIR FAIRE', 'Motorics', 'logic'],
    ['23', 'COMPOSURE', 'Motorics', 'logic'],
    ['24', 'INTERFACING', 'Motorics', 'logic'],
  ];

  ListedSkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Skills'),
        ),
        drawer: const DrawerMenu(),
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
                                  Text(_skills[index][1],
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                  Text("Category: " + _skills[index][2],
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 14))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            GestureDetector(
                              child: Image.asset('assets/images/$index.webp'),
                              onTap: (() {
                                print('tap');
                              }),
                            )
                          ]));
                }),
          ),
        ));
  }
}

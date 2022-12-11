import 'package:flutter/material.dart';

import '../widgets/drawer_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Disco Elysium'),
        centerTitle: true,
      ),
      drawer: const DrawerMenu(),
      body: SingleChildScrollView(
        child: Center(
            child: Column(children: [
          Container(
              decoration: BoxDecoration(
                border: Border.all(width: 5.0, color: Colors.blueGrey),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromRGBO(71, 195, 161, .3),
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: Offset(0, 5))
                ],
              ),
              child: Image.asset('assets/images/home_disco_elysium.jpg')),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(133, 45, 23, .4),
              border: Border.all(
                  width: 2.0, color: const Color.fromRGBO(104, 105, 63, 4)),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(71, 195, 161, .1),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(0, 5))
              ],
            ),
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            height: size.height * 0.09,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // Box de icons
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, 'harry');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.portrait_rounded),
                        Text('Harry'),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, 'skills');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.psychology_sharp),
                        Text('Skills'),
                      ],
                    ),
                  )
                ]),
          ),
          Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(width: 3.0, color: Colors.blueGrey)),
              margin: const EdgeInsets.all(20),
              child: const Text(
                  "Disco Elysium is a 2019 role-playing video game developed and published by ZA/UM.\n\n"
                  "The game takes place in the seaside district of a fictional city still recovering from the ramifications of a siege decades prior to the game's start. Players take the role of an amnesiac detective who has been tasked with solving a murder mystery. Disco Elysium is a non-traditional role-playing game featuring no combat. Instead, events are resolved through skill checks and dialogue trees via a system of 24 skills that represents different aspects of the protagonist, such as his perception and pain threshold.\n\n"
                  "Disco Elysium was released for Windows in October 2019 and macOS in April 2020. An expanded version of the game featuring full voice acting and new content, subtitled The Final Cut, was released for consoles in 2021, alongside a free update for the PC and macOS versions."))
        ])),
      ),
    );
  }
}

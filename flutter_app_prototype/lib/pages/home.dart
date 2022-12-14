import 'package:flutter/material.dart';
import 'package:flutter_app_prototype/widgets/widgets.dart';
// import '../widgets/drawer_menu.dart';
// import '../widgets/portraits.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Disco Elysium', style: TextStyle(fontSize: 30)),
        centerTitle: true,
      ),
      drawer: const DrawerMenu(),
      body: SingleChildScrollView(
        child: Center(
            child: Column(children: [
          const Portrait(
            urlImage: 'assets/images/home_disco_elysium.jpg',
          ),
          Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(width: 3.0, color: Colors.blueGrey)),
              margin: const EdgeInsets.all(20),
              child: const Text(
                  "Disco Elysium is a 2019 role-playing video game developed and published by ZA/UM.\n\n"
                  "The game takes place in the seaside district of a fictional city still recovering from the ramifications of a siege decades prior to the game's start. Players take the role of an amnesiac detective who has been tasked with solving a murder mystery. Disco Elysium is a non-traditional role-playing game featuring no combat. Instead, events are resolved through skill checks and dialogue trees via a system of 24 skills that represents different aspects of the protagonist, such as his perception and pain threshold.\n\n"
                  "Disco Elysium was released for Windows in October 2019 and macOS in April 2020. An expanded version of the game featuring full voice acting and new content, subtitled The Final Cut, was released for consoles in 2021, alongside a free update for the PC and macOS versions.",
                  style: TextStyle(fontSize: 20)))
        ])),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
            if (currentIndex == 0) {
              Navigator.pushReplacementNamed(context, 'harry');
            } else {
              Navigator.pushReplacementNamed(context, 'skills');
            }
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait_rounded),
            label: 'Harry',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.psychology_rounded),
            label: 'Skills',
          )
        ],
      ),
    );
  }
}

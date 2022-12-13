import 'package:flutter/material.dart';
import '../widgets/drawer_menu.dart';
import 'info.dart';

class ListedSkillsPage extends StatelessWidget {
  const ListedSkillsPage({super.key});

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
                itemCount: Info.skillList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, 'skill',
                          arguments: {
                            'skill_name': Info.skillList[index][3],
                            'description': Info.skillList[index][4],
                            'index': index,
                          });
                    },
                    child: Container(
                        height: 90,
                        width: 350,
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey[700],
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red.shade700,
                                  blurRadius: 1,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 3))
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
                                    Text(Info.skillList[index][1],
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 18)),
                                    Text(
                                        "Category: ${Info.skillList[index][2]}",
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 14)),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.8, color: Colors.red)),
                                    child: Image.asset(
                                        'assets/images/$index.webp')),
                              )
                            ])),
                  );
                }),
          ),
        ));
  }
}

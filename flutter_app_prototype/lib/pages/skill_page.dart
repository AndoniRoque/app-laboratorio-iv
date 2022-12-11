import 'package:flutter/material.dart';
import 'package:flutter_app_prototype/widgets/drawer_menu.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Skill'),
          centerTitle: true,
        ),
        drawer: const DrawerMenu(),
        body: ListView(
          children: [
            const Card(
              elevation: 20,
              child: ListTile(
                title: Text(
                    style: TextStyle(
                      fontFamily: 'changa',
                      fontSize: 30,
                    ),
                    'Logic'),
              ),
            ),
            Card(elevation: 10, child: Image.asset('assets/images/0.webp')),
            const Card(
                elevation: 1,
                child: ListTile(
                    title: Text(
                        style: TextStyle(fontFamily: 'cardo', fontSize: 22),
                        'Description'),
                    subtitle: Text(
                        style: TextStyle(fontFamily: 'cardo', fontSize: 20),
                        "\n\n"
                        "Wield raw intellectual power. Deduce the world.\n\n"
                        "Cool for: Analysts, Pure Rationalists, Obviously Logicians.\n\n"
                        "Logic urges you to analyze the living daylights out of the case. It enables you to piece evidence together, detect inconsistencies in statements, and impress everyone with your astonishing conclusions. It's the bread and butter of many a detective.\n\n"
                        "At high levels, Logic will be able to solve even the most complicated puzzle. You will be very proud and thus susceptible to intellectual flattery; for those blinded by their own brilliance often miss important clues. With low levels of Logic, you’re going to have a hard time solving even the simplest puzzles. Even if you find the pieces, good luck putting them together.\n\n")))
          ],
        ));
  }
}

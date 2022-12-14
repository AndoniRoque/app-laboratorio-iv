import 'package:flutter/material.dart';
import 'package:flutter_app_prototype/widgets/drawer_menu.dart';
import 'package:flutter_app_prototype/widgets/portraits.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Skill', style: TextStyle(fontSize: 30)),
          centerTitle: true,
        ),
        drawer: const DrawerMenu(),
        body: ListView(
          children: [
            Card(
              elevation: 20,
              child: ListTile(
                  title: Text(
                      style: const TextStyle(
                        fontFamily: 'changa',
                        fontSize: 30,
                      ),
                      arguments['skill_name'].toString())),
            ),
            Portrait(
                urlImage:
                    'assets/images/${arguments["index"].toString()}.webp'),
            Card(
                elevation: 1,
                child: ListTile(
                    title: const Text(
                        style: TextStyle(fontFamily: 'cardo', fontSize: 22),
                        'Description\n'),
                    subtitle: Text(
                        style:
                            const TextStyle(fontFamily: 'cardo', fontSize: 20),
                        arguments["description"].toString())))
          ],
        ));
  }
}

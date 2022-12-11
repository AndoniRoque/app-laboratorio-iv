import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
      const _DrawerHeader(),
      ListTile(
        title: const Text('Disco Elysium'),
        subtitle: const Text('Home page'),
        leading: const Icon(Icons.adjust),
        onTap: () {
          Navigator.pushReplacementNamed(context, 'home');
        },
      ),
      const Divider(height: 5),
      ListTile(
        title: const Text('Harrier Du Bois'),
        subtitle: const Text("Disco Elysium's playable character"),
        leading: const Icon(Icons.adjust),
        onTap: () {
          Navigator.pushReplacementNamed(context, 'harry');
        },
      ),
      const Divider(height: 5),
      ListTile(
        title: const Text('Skills'),
        subtitle: const Text("Harry's skills"),
        leading: const Icon(Icons.adjust),
        onTap: () {
          Navigator.pushReplacementNamed(context, 'skills');
        },
      ),
      const Divider(height: 5),
    ]));
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/disco_elysium-logo.png'),
              fit: BoxFit.contain,
              opacity: 0.9)),
      child: Container(
        alignment: Alignment.bottomRight,
      ),
    );
  }
}

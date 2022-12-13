import 'package:flutter/material.dart';
import 'package:flutter_app_prototype/widgets/widgets.dart';

class HarryPage extends StatelessWidget {
  const HarryPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Harry Du Bois'),
        centerTitle: true,
      ),
      drawer: const DrawerMenu(),
      body: SingleChildScrollView(
        child: Center(
            child: Column(children: [
          const Portrait(urlImage: 'assets/images/harry.webp'),
          // Container(
          //     decoration: BoxDecoration(
          //       border: Border.all(width: 5.0, color: Colors.blueGrey),
          //       boxShadow: const [
          //         BoxShadow(
          //             color: Color.fromRGBO(71, 195, 161, .3),
          //             blurRadius: 8,
          //             spreadRadius: 2,
          //             offset: Offset(0, 5))
          //       ],
          //     ),
          //     child: Image.asset('assets/images/harry.webp')),
          Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(width: 3.0, color: Colors.blueGrey)),
              margin: const EdgeInsets.all(20),
              child: const Text(
                  "The amnesiac playable character of Disco Elysium.\n\n"
                  "Lieutenant double-yefreitor Harrier 'Harry' Du Bois is the sole player-controlled protagonist in Disco Elysium.\n\n"
                  "Harry sports a greasy, unkempt mullet and mutton chops by default. His nose is red and bulbous, and beneath his facial hair, his face is swollen due to his copious consumption of alcohol. Harry's jaw is crooked from contracting polio as a child, and he has a dimple on his chin. \n\n"
                  "Though he is able to pick up or purchase a variety of clothing, his default attire consists of a green suede blazer adorned with RCM watermarks across the back and the right sleeve, golden brown, flare-cut trousers, white satin shirt, and a horrific necktie."))
        ])),
      ),
    );
  }
}

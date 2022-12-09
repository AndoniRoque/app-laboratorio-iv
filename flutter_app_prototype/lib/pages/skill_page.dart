import 'package:flutter/material.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Skill'),
          centerTitle: true,
        ),
        body: Card(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/portrait_logic.webp'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
              ),
            ),
          ),
        )
        // body: ListView(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        //       child: Card(
        //         elevation: 10,
        //         child: Column(
        //           children: [
        //             const ListTile(
        //               leading: Icon(Icons.image),
        //               title: Text('Titulo de nuestra Card'),
        //               subtitle: Text(
        //                   'lahwlfajj jjawjeofi lkjdvc,vmnfde aeioijdsf pfoaef; aodjif h.oaewfjehkdf  po eawri ja a ud y ywf iu jnfa er  djñaoigjklerñiodf sppo f. Cjhfañwlofijdfjhfhhdfdiosfdp .'),
        //             ),
        //             Row(
        //               children: [
        //                 TextButton(
        //                     onPressed: () {}, child: const Text('Aceptar')),
        //                 const SizedBox(
        //                   width: 5,
        //                 ),
        //                 ElevatedButton(
        //                     onPressed: () {}, child: const Text('Cancelar'))
        //               ],
        //             )
        //           ],
        //         ),
        //       ),
        //     )
        //   ],
        // ),
        );
  }
}

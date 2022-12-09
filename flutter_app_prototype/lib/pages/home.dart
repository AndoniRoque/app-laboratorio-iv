import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Disco Elysium'),
        elevation: 10,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(children: [
          const Image(
              image: NetworkImage(
                  'https://ia902502.us.archive.org/12/items/metal-gear-solid-3-subsistence-italy-disc-1-subsistence-disc/MV5BZDc1OGUxMzItNWIyYi00ZGExLTllZTItNGFmNWRmMDUyOGU5XkEyXkFqcGdeQXVyODg1MTQ2MDg%40._V1_FMjpg_UX1000_%20-%20Copia.jpg')),
          const FadeInImage(
            placeholder: AssetImage('assets/3ypc.gif'),
            image:
                NetworkImage('https://images7.alphacoders.com/103/1035943.jpg'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: 250,
          ),
          Container(
            color: Colors.lightBlue[50],
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            height: size.height * 0.085,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Titulo de prueba Principal'),
                      SizedBox(height: 10),
                      Text('Subtitulo de prueba'),
                    ],
                  ),
                  const Icon(Icons.star_outline),
                  const Text('50')
                ]),
          ),
          Container(
            color: Colors.lightBlue[50],
            margin: const EdgeInsets.symmetric(horizontal: 3),
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [Icon(Icons.phone), Text('CALL')],
                ),
                Column(
                  children: const [Icon(Icons.telegram), Text('Route')],
                ),
                Column(
                  children: const [Icon(Icons.share), Text('Share')],
                )
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                  'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat'))
        ])),
      ),
    );
  }
}
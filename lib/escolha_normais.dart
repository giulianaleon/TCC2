import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:async';


void main() {
  runApp(Normais());
}

class Normais extends StatelessWidget {
  Normais({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage (),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage ({key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text ("Sons Pulmonares Normais"),
          backgroundColor: const Color.fromRGBO(198, 204, 160, 71),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fundonovo.jpg'),
                fit: BoxFit.cover,
              ),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text("Som Traqueal"),
                        SizedBox(height: 10),
                        Text("- Região de projeção da traquéia -> cervical e esterno" "teste" '\n' "- Som tubular, intenso e soproso" '\n' "- Inspiração menor que a expiração, com pausa entre eles" ),
                        IconButton(
                          onPressed: () {
                            final player = AudioCache();
                            player.play('somtraqueal.mp3');
                          },
                          icon: const Icon (Icons.play_circle_filled),
                          iconSize: 35,
                        ),
                      ],
                    ),
                  ),
                ),

                Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        //SizedBox(height: 10),
                        Text("Som Brônquico"),
                        SizedBox(height: 10),
                        Text("- Região de projeção dos brônquios fontes -> esterno" '\n' "- Semelhante ao som traqueal, porém menos intenso" '\n' "- Inspiração semelhante expiração com pausa entre eles"),
                        IconButton(
                          onPressed: () {
                            final player = AudioCache();
                            player.play('sombronquico.mp3');
                          },
                          icon: const Icon (Icons.play_circle_filled),
                          iconSize: 35,
                        ),
                      ],
                    ),
                  ),
                ),

                Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        //SizedBox(height: 10),
                        Text("Som Broncovesicular"),
                        SizedBox(height: 10),
                        Text("- Soma as características do som brônquico com o murmúrio vesicular" '\n' "- Normalmente auscultado na região esternal superior e interescapulovertebral"),
                        IconButton(
                          onPressed: (){
                            final player = AudioCache();
                            player.play('sombroncovesicular.mp3');
                          },
                          icon: const Icon (Icons.play_circle_filled),
                          iconSize: 35,
                        ),
                      ],
                    ),
                  ),
                ),

                Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        //SizedBox(height: 10),
                        const Text("Murmúrio Vesicular"),
                        const SizedBox(height: 10),
                        const Text("- Regiões periféricas dos pulmões" '\n' "- Som suave -> barulho de ondas do mar" '\n' "- Inspiração maior que a expiração, sem pausa entre eles"),
                        const Text ("Som 1:"),
                        IconButton(
                            onPressed: () {
                              final player = AudioCache();
                              player.play('murmuriovesicular.mp3');
                            },
                          icon: const Icon (Icons.play_circle_filled),
                          iconSize: 35,
                        ),
                        const Text ("Som 2:"),
                        IconButton(
                          onPressed: () {
                            final player = AudioCache();
                            player.play('vesiculares5.mp3');
                          },
                          icon: const Icon (Icons.play_circle_filled),
                          iconSize: 35,
                        ),
                      ],
                    ),
                  ),
                ),

              ],

            ),

          ),
        ),    );
  }


}

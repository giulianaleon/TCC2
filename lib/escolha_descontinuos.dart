import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(escolha_descontinuos());
}

class escolha_descontinuos extends StatelessWidget {
  escolha_descontinuos({key}) : super(key: key);

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
          title: const Text ("Sons Pulmonares Descontínuos"),
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
                      children: const [
                        //SizedBox(height: 20),
                        Text("Estertores"),
                        SizedBox(height: 10),
                        Text("São ruídos audíveis na inspiração ou expiração, superpondo-se aos sons respiratórios normais. Podem ser finos ou grossos."),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 30),

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
                        const Text("Estertores Finos"),
                        const SizedBox(height: 10),
                        const Text("- Ocorrem no final da inspiração, têm frequência alta (agudos) e duração curta" '\n' "- Não se modificam com a tosse"),
                        IconButton(
                          onPressed: () {
                            final player = AudioCache();
                            player.play('estertores finos.mp3');
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
                        Text("Estertores Grossos"),
                        SizedBox(height: 10),
                        Text("- Têm frequência menor e maior duração que os finos" '\n' "- Sofrem nítida alteração com a tosse e podem ser ouvidos em todas as regiões do tórax" '\n' "- São audíveis no início da inspiração e durante toda a expiração"),
                        IconButton(
                          onPressed: () {
                            final player = AudioCache();
                            player.play('estertores grossos.mp3');
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

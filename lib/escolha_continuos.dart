import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(escolha_continuos());
}

class escolha_continuos extends StatelessWidget {
  escolha_continuos({key}) : super(key: key);

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
          title: const Text ("Sons Pulmonares Contínuos"),
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
                      //SizedBox(height: 20),
                      Text("Roncos"),
                      SizedBox(height: 10),
                      Text("- Pontos obstrutivos nas vias aéreas inferiores" '\n' "- Som mais grave, com frequências abaixo de 200 Hz" '\n' "- Aparecem na inspiração ou espiração, mas predominam na última."),
                      const Text ("Som 1:"),
                      IconButton(
                        onPressed: () {
                          final player = AudioCache();
                          player.play('roncos.mp3');
                        },
                        icon: const Icon (Icons.play_circle_filled),
                        iconSize: 35,
                      ),
                      const Text ("Som 2:"),
                      IconButton(
                        onPressed: () {
                          final player = AudioCache();
                          player.play('roncos1.mp3');
                        },
                        icon: const Icon (Icons.play_circle_filled),
                        iconSize: 35,
                      ),
                      const Text ("Som 3:"),
                      IconButton(
                        onPressed: () {
                          final player = AudioCache();
                          player.play('roncos2.mp3');
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
                      Text("Síbilos"),
                      SizedBox(height: 10),
                      Text("- Pontos obstrutivos nas vias aéreas inferiores" '\n' "- Som mais agudo, com frequências acima de 400 Hz" '\n' "- Aparecem na inspiração ou espiração, mas predominam na última."),
                      const Text ("Som 1:"),
                      IconButton(
                        onPressed: () {
                          final player = AudioCache();
                          player.play('sibilos.mp3');
                        },
                        icon: const Icon (Icons.play_circle_filled),
                        iconSize: 35,
                      ),
                      const Text ("Som 2:"),
                      IconButton(
                        onPressed: () {
                          final player = AudioCache();
                          player.play('sibilos2.mp3');
                        },
                        icon: const Icon (Icons.play_circle_filled),
                        iconSize: 35,
                      ),
                      const Text ("Som 3:"),
                      IconButton(
                        onPressed: () {
                          final player = AudioCache();
                          player.play('sibilos4.mp3');
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
                      Text("Estridor"),
                      SizedBox(height: 10),
                      Text("- Obstrução na laringe ou na traqueia" '\n' "- Laringite, edema de glote ou corpo estranho" '\n' "- Som bastante intenso e acontece tanto na inspiração quando na expiração"),
                      IconButton(
                        onPressed: () {
                          final player = AudioCache();
                          player.play('estridor.mp3');
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

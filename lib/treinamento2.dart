import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(Treinamento2());
}

class Treinamento2 extends StatelessWidget {
  Treinamento2({key}) : super(key: key);

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
          title: const Text ("Sons Pulmonares"),
          backgroundColor: const Color.fromRGBO(198, 204, 160, 71),
        ),
        body: Container(
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
                      SizedBox(height: 20),
                      Text("Ruídos"),
                      Text("- Sons graves, portanto de baixa frequência; "
                          "- Originam-se nas vibrações das paredes brônquicas e do conteúdo gasoso quando há estreitamento desses ductos, seja por espasmo, edema da parede ou secreção aderida a ela, como ocorre na asma brônquica, bronquites, bronquiectasias e obstruções localizadas. "
                          "- Embora apareçam na inspiração e expiração, predominam nessa. "
                          "- Surgem e desaparecem em curto período."),
                    ],
                  ),
                ),
              ),
            ],

          ),




        )    );
  }


}

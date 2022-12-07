import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ausculta/criar_conta.dart';
import 'package:ausculta/cadastrar_sessao.dart';
import 'package:ausculta/escolha_normais.dart';
import 'package:ausculta/escolha_descontinuos.dart';
import 'package:ausculta/escolha_continuos.dart';



void main() {
  runApp(escolha_adventicios());
}

class escolha_adventicios extends StatelessWidget {
  escolha_adventicios({key}) : super(key: key);

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
          title: const Text ("Sons Pulmonares Adventícios"),
          backgroundColor: const Color.fromRGBO(198, 204, 160, 71),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fundonovo.jpg'),
              fit: BoxFit.cover,
            ),
          ),

          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/logo2.png'),
                  ),

                ],
              ),

              const SizedBox(height: 40),

              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      const SizedBox(height: 20),

                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => escolha_descontinuos()),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(198, 204, 160, 71),
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text('Descontínuos',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),),

                      const SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => escolha_continuos()),
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(198, 204, 160, 71),
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text('Contínuos',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),),
                        ],
                      ),


                      const SizedBox(height: 20),

                    ],
                  ),
                ),
              ),
            ],
          ),


        )    );
  }
}

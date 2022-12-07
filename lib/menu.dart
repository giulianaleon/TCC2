import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ausculta/criar_conta.dart';
import 'package:ausculta/criar_paciente.dart';
import 'package:ausculta/cadastrar_sessao.dart';
import 'package:ausculta/escolha_som.dart';
import 'package:ausculta/quiz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:ausculta/bluetooth.dart';


void main() {
  runApp(Menu());
}

class Menu extends StatelessWidget {
  Menu({key}) : super(key: key);

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
          title: const Text ("Menu"),
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

              const SizedBox(height: 20),

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

                      //const SizedBox(height: 15),

                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => escolha_som()),
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
                        child: const Text('TREINAMENTO PARA AUSCULTA PULMONAR',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Sessao()),
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
                            child: const Text('SESSÃO DE AUSCULTA PULMONAR',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),),
                        ],
                      ),

                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CriarConta()),
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
                        child: const Text('CADASTRAR FISIOTERAPEUTA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),),

                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CriarPaciente()),
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
                        child: const Text('CADASTRAR PACIENTE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),),


                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CriarConta()),
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
                        child: const Text('ANÁLISE DE SESSÕES',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),),

                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Quiz()),
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
                        child: const Text('QUIZ PULMONAR',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),),

                    ],
                  ),
                ),
              ),
            ],
          ),


        )    );
  }
}

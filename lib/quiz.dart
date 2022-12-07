import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:ausculta/helper_quiz.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Helper helper = Helper();

void main() {
  runApp(Quiz());
}

class Quiz extends StatelessWidget {
  Quiz({key}) : super(key: key);

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

  List<Icon> marcadorPontos = [

  ];

  void conferirResposta (bool respostaUsuario){

    bool respostaCerta = helper.obterResposta();

    setState(() {

      if(helper.confereFimDaExecucao() == true){

        Alert(
          context: context,
          title: 'Fim do Quiz!',
          desc: 'Você respondeu a todas as perguntas!',
        ).show();

        helper.resetarQuiz();
        marcadorPontos = [];
      }else{
        if(respostaCerta == respostaUsuario){
          //print ("Correto");
          marcadorPontos.add(const Icon(Icons.check, color: Colors.lightGreen));
        }else{
          //print ("Errou");
          marcadorPontos.add(const Icon(Icons.close, color: Colors.redAccent));
        }
        helper.proximaPergunta();
      }
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text ("Quiz Pulmonar"),
          backgroundColor: const Color.fromRGBO(198, 204, 160, 71),
        ),
        body: Container(
          decoration: const BoxDecoration(
            //image: DecorationImage(
              //image: AssetImage('assets/images/fundonovo.jpg'),
              //fit: BoxFit.cover,
            //),
          ),

          child: Column (
            children: <Widget>[

              const SizedBox(height: 80),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        helper.obterQuestao(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 25.0,
                          color: Colors.black87,
                        ),
                      ),


                      IconButton(
                        onPressed: () {
                          final player = AudioCache();
                          player.play(helper.obterSom());
                          //print (sonsPulmonares[0]);
                        },
                        icon: const Icon (Icons.play_circle_filled),
                        //color: Colors.white,
                        iconSize: 50,
                      ),
                    ],
                  ),
                ),
              ),


              Row(
                children: const [
                  SizedBox(height: 20),
                ],
              ),

              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: FlatButton(
                          color: const Color.fromRGBO(198, 204, 160, 71),
                          child: const Text(
                            'Verdadeiro',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            conferirResposta(true);
                          },
                        ),
                      ),
                    ),


                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: FlatButton(
                          color: Colors.grey.shade800,
                          child: const Text(
                            'Falso',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            conferirResposta(false);
                          },
                        ),
                      ),
                    ),

                  ],
                ),
              ),



              Row(
                children: marcadorPontos,
              ),
            ],
          ),



        )    );
  }
}




//Normais: Som Traqueal, Som bronquico, som broncovesicular, murmurio vesicular
//Adventicios:     Continuos: Roncos, sibilos, estridor
//                 Descontinuos: estertores finos e estertores grossos



//pergunta 1: Este som é um som broncovesicular?      -Resposta: verdadeira
//pergunta 2: Este som é um som bronquico?            -Resposta: verdadeira
//pergunta 3: Este som é um som estertor fino?        -Resposta: falsa
//pergunta 4: Este som é um som ronco?                -Resposta: verdadeira
//pergunta 5: Este som é um som vesicular?            -Resposta: falsa
//pergunta 6: Este som é um som murmurio vesicular?   -Resposta: falsa
//pergunta 7: Este som é um som estertor grosso?      -Resposta: verdadeira
//pergunta 8: Este som é um som sibilo?               -Resposta: verdadeira
//pergunta 9: Este som é um som vesicular?            -Resposta: falsa
//pergunta 10: Este som é um som ronco?               -Resposta: verdadeira
//pergunta 11: Este som é um som estridor?            -Resposta: verdadeira
//pergunta 12:
//pergunta 13:
//pergunta 14:
//pergunta 15:
//pergunta 16:
//pergunta 17:
//pergunta 18:
//pergunta 19:
//pergunta 20:


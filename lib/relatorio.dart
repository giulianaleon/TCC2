import 'package:flutter/material.dart';
import 'package:ausculta/main.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const Relatorio());
}

class Relatorio extends StatelessWidget {
  const Relatorio({key}) : super(key: key);

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
  State<HomePage> createState() => _Relatorio();
}

class _Relatorio extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text ("Análise de Sessão"),
          backgroundColor: const Color.fromRGBO(198, 204, 160, 71),
        ),
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/fundonovo.jpg'),
                  fit: BoxFit.cover,
                ),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),

                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children:  [
                          Row(
                            children: const [
                              SizedBox(
                                width: 150,
                                child: Text("Paciente: "),
                              ),
                              SizedBox(
                                width: 150,
                                child: Text(""),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          Row(
                            children: const [
                              SizedBox(
                                width: 150,
                                child: Text("Profissional: "),
                              ),
                              SizedBox(
                                width: 150,
                                child: Text(""),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          const Text(
                            '-----------------------------------------------------',
                            style: TextStyle(
                              fontSize: 50,
                              color: Color.fromRGBO(198, 204, 160, 71),
                              fontWeight: FontWeight.w300,
                              letterSpacing: -10,
                            ),
                          ),

                          const SizedBox(height: 20),

                          Row(
                            children: const [
                              SizedBox(
                                width: 150,
                                child: Text("Frequência Cardíaca: "),
                              ),
                              SizedBox(
                                width: 150,
                                child: Text(""),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          Row(
                            children: const [
                              SizedBox(
                                width: 150,
                                child: Text("Frequência Respiratória: "),
                              ),
                              SizedBox(
                                width: 150,
                                child: Text(""),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          Row(
                            children: const [
                              SizedBox(
                                width: 150,
                                child: Text("Saturação do Oxigênio: "),
                              ),
                              SizedBox(
                                width: 150,
                                child: Text(""),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          Row(
                            children: const [
                              SizedBox(
                                width: 150,
                                child: Text("Pressão Arterial: "),
                              ),
                              SizedBox(
                                width: 150,
                                child: Text(""),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          Row(
                            children: const [
                              SizedBox(
                                width: 150,
                                child: Text("Temperatura Corporal: "),
                              ),
                              SizedBox(
                                width: 150,
                                child: Text(""),
                              ),
                            ],
                          ),


                          const SizedBox(height: 20),

                          Row(
                            children: [

                              const SizedBox(width: 90),

                              TextButton(
                                //onPressed: (),
                                style: TextButton.styleFrom(
                                  backgroundColor: const Color.fromRGBO(198, 204, 160, 71),
                                  padding: const EdgeInsets.only(left: 30, right: 30),
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                child: const Text('Gerar Relatório',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )

    );
  }
}

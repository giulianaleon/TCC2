import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ausculta/cadastrar_sessao.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(CriarPaciente());
}

class CriarPaciente extends StatelessWidget {
  CriarPaciente({key}) : super(key: key);

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
  State<HomePage> createState() => _CriarPacientePageState();
}

class _CriarPacientePageState extends State<HomePage> {

  TextEditingController controleNome = TextEditingController();
  TextEditingController controleIdade = TextEditingController();
  TextEditingController controlePeso = TextEditingController();
  TextEditingController controleAltura = TextEditingController();
  TextEditingController controleCPF = TextEditingController();
  TextEditingController controleSUS = TextEditingController();
  TextEditingController controleTelefone = TextEditingController();
  TextEditingController controlePatologia = TextEditingController();
  TextEditingController controleSexo = TextEditingController();
  TextEditingController controleCID = TextEditingController();
  TextEditingController controleEndereco = TextEditingController();
  TextEditingController controleContatoEmergencia = TextEditingController();

  void registrar(String controleCID, String controleContatoEmergencia, String controleAltura, String controleEndereco, String controleIdade, String controleNome, String controlePeso, String controleSexo, String controleSUS, String controleTelefone) async{

    FirebaseFirestore.instance.collection('paciente').add({
      'CID': controleCID,
      'altura': controleAltura,
      'contato_emergencia': controleContatoEmergencia,
      'endereco': controleEndereco,
      'nascimento': controleIdade,
      'nome': controleNome,
      'peso': controlePeso,
      'sexo': controleSexo,
      'sus': controleSUS,
      'telefone': controleTelefone
    });

    Fluttertoast.showToast(
        msg: "Registrado com sucesso!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.lightGreen,
        textColor: Colors.white,
        fontSize: 16.0
    );

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text ("Cadastrar Paciente"),
          backgroundColor: const Color.fromRGBO(198, 204, 160, 71),
        ),
        body:  SingleChildScrollView(
            child: Column(
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
                              SizedBox(
                                width: 250,
                                child: TextField(
                                  controller: controleNome,
                                  decoration: const InputDecoration(
                                    labelText: 'Nome Completo',
                                    icon: Icon(Icons.person_add),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 8),

                              SizedBox(
                                width: 250,
                                child: TextField(
                                  controller: controleIdade,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    labelText: 'Idade',
                                    icon: Icon(Icons.account_circle),
                                  ),
                                ),
                              ),


                              SizedBox(
                                width: 250,
                                child: TextField(
                                  controller: controleSexo,
                                  decoration: const InputDecoration(
                                    labelText: 'Sexo',
                                    icon: Icon(Icons.account_circle),
                                  ),
                                ),
                              ),

                              //const SizedBox(height: 30),

                              Row(
                                children: [
                                  const SizedBox(width: 32),

                                  SizedBox(
                                    width: 130,
                                    child: TextField(
                                      controller: controlePeso,
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        labelText: 'Peso',
                                        icon: Icon(Icons.account_circle),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(width: 30),

                                  SizedBox(
                                    width: 100,
                                    child: TextField(
                                      controller: controleAltura,
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        labelText: 'Altura',
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                width: 250,
                                child: TextField(
                                  controller: controleCPF,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    labelText: 'CPF',
                                    icon: Icon(Icons.person_pin_circle_sharp),
                                  ),
                                ),
                              ),

                              SizedBox(
                                width: 250,
                                child: TextField(
                                  controller: controleCID,
                                  decoration: const InputDecoration(
                                    labelText: 'CID',
                                    icon: Icon(Icons.account_circle),
                                  ),
                                ),
                              ),

                              SizedBox(
                                width: 250,
                                child: TextField(
                                  controller: controleSUS,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    labelText: 'SUS',
                                    icon: Icon(Icons.badge),
                                  ),
                                ),
                              ),

                              SizedBox(
                                width: 250,
                                child: TextField(
                                  controller: controleTelefone,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    labelText: 'Telefone',
                                    icon: Icon(Icons.phone),
                                  ),
                                ),
                              ),

                              SizedBox(
                                width: 250,
                                child: TextField(
                                  controller: controleEndereco,
                                  decoration: const InputDecoration(
                                    labelText: 'Endereço Residencial',
                                    icon: Icon(Icons.medication),
                                  ),
                                ),
                              ),

                              SizedBox(
                                width: 250,
                                child: TextField(
                                  controller: controleContatoEmergencia,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    labelText: 'Contato de Emergência',
                                    icon: Icon(Icons.account_circle),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 30),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: (){
                                      registrar(controleCID.text, controleContatoEmergencia.text, controleAltura.text, controleEndereco.text, controleIdade.text, controleNome.text, controlePeso.text, controleSexo.text, controleSUS.text, controleTelefone.text);
                                      controleCID.text="";
                                      controleTelefone.text="";
                                      controleSUS.text="";
                                      controleCPF.text="";
                                      controleAltura.text="";
                                      controlePeso.text="";
                                      controleSexo.text="";
                                      controleNome.text="";
                                      controleIdade.text="";
                                      controleContatoEmergencia.text="";
                                      controleEndereco.text="";
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(198, 204, 160, 71),
                                      padding: const EdgeInsets.only(left: 30, right: 30),
                                      primary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    child: const Text('CRIAR',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),


                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 100),

                    ],
                  ),
                ),
              ],
            )
        ),    );
  }
}

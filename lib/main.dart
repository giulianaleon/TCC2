import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ausculta/criar_conta.dart';
import 'package:ausculta/cadastrar_sessao.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:ausculta/bluetooth.dart';
import 'package:ausculta/menu.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(TelaLogin());
}

class TelaLogin extends StatelessWidget {
  TelaLogin({key}) : super(key: key);

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

  TextEditingController emailP = TextEditingController();
  TextEditingController crefitoP = TextEditingController();

  var seguro = true;
  var dados;

  /* Future login() async {
    var url = Uri.parse(
        'http://192.168.0.37/ausculsensor/profissional/login.php');
    var response = await http.post(url, body: {
      "senha": senhaP.text,
      "email": emailP.text,
    });

    print(response.body);
    setState(() {
      var convertData = json.decode(response.body);
      dados = convertData['result'];
    });

    if(dados == "FRACASSO"){
      Fluttertoast.showToast(
          msg: "ERRO! Digite novamente seus dados!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      //Navigator.push(context, MaterialPageRoute(builder: (context) => TelaLogin()));
    }else {
      Fluttertoast.showToast(
          msg: "Login efetuado com sucesso!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.lightGreen,
          textColor: Colors.white,
          fontSize: 16.0
      );
      //Navigator.push(context, MaterialPageRoute(builder: (context) => PaginaLista()));
      Navigator.push(context, MaterialPageRoute(builder: (context) => Sessao()));

    }
  }

    _verificarDados (String email, String senha) {
      if (dados['email'] == email && dados['senha'] == senha) {
        Fluttertoast.showToast(
            msg: "Login efetuado com sucesso!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.lightGreen,
            textColor: Colors.white,
            fontSize: 16.0
        );
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PaginaLista()));
      } else {
        Fluttertoast.showToast(
            msg: "ERRO! Digite novamente seus dados!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
      }
    }
*/         //VERIFICAÇÃO SE OS DADOS ESTÃO CORRETOS


  login(){

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset: false,
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
              const SizedBox(height: 15),

              Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/logo2.png'),
                  ),

                  const SizedBox(height: 50),
                ],
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
                      SizedBox(
                        width: 250,
                        child: TextField(
                          controller: crefitoP,
                          keyboardType: TextInputType.number,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: const InputDecoration(
                            labelText: 'CREFITO',
                            icon: Icon(Icons.vpn_key),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                     //login();   //comentado por causa da função futurologin
                      //_verificarDados(emailP.text, senhaP.text);

                      Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
                      crefitoP.text = "";
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(198, 204, 160, 71),
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text('ENTRAR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),

                ],
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '------------------',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      letterSpacing: -10,
                    ),
                  ),
                  SizedBox(width: 25),
                  Text(
                    'OU',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 25),
                  Text(
                    '------------------',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      letterSpacing: -10,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                    child: const Text('CRIAR NOVA CONTA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),),
                ],
              ),

            ],
          ),
        )    );
  }
}

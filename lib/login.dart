// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var nomeControler = TextEditingController();
  var emailControler = TextEditingController();
  var senhaControler = TextEditingController();
  var repitasenhaControler = TextEditingController();
  var cpfControler = TextEditingController();
  bool curtiu = false;
  int nc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 216, 216),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 185, 80, 218),
        title: Text(
          "Login",
          style: TextStyle(),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [

          SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: emailControler,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              label: Text("Informe seu Email"),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: senhaControler,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              label: Text("Informe sua senha"),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          
          ElevatedButton(
            onPressed: () {
              print("O botão salvar foi clicado");
              print(emailControler.text);
              print(senhaControler.text);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 185, 80, 218)),
            child: Text("Salvar"),
          ),
        ],
      ),
    );
  }
}

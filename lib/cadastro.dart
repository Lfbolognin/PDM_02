// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  bool curtiu = false;
  int nc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 144, 195, 24),
        title: Text("Cadastro"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(
                Icons.email,
                color: Colors.blue,
              ),
              hintText: "Informe seu email",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(
                Icons.lock,
                color: Colors.grey,
              ),
              hintText: "Informe sua senha",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text("Salvar"),
          ),
        ],
      ),
    );
  }
}

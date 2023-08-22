// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
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
        backgroundColor: Color.fromARGB(255, 224, 104, 6),
        title: Text(
          "Cadastro",
          style: TextStyle(),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TextFormField(
            controller: nomeControler,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: Text("Informe seu nome completo"),
              border: OutlineInputBorder(),
            ),
          ),
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
          TextFormField(
            controller: repitasenhaControler,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              label: Text("Repita a sua senha"),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: cpfControler,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.badge,
                color: Colors.white,
              ),
              label: Text("Informe seu CPF"),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.calendar_month,
                color: Colors.white,
              ),
              label: Text("Informe sua data de nascimento"),
              border: OutlineInputBorder(),
            ),
            onTap: () {
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900, 1, 1),
                  lastDate: DateTime.now());
            },
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              print("O botão salvar foi clicado");
              print(nomeControler.text);
              print(emailControler.text);
              print(senhaControler.text);
              print(repitasenhaControler.text);
              print(cpfControler.text);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 224, 104, 6)),
            child: Text("Salvar"),
          ),
        ],
      ),
    );
  }
}

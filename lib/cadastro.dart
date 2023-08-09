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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Cadastraram $nc vezes",
              style: TextStyle(
                color: Color.fromARGB(255, 30, 45, 206),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 97, 202, 65)),
              onPressed: () {
                setState(() {
                  nc = nc + 1;
                });
              },
              child: Text("Cadastrar"),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                setState(() {
                  nc = nc - 1;
                });
              },
              child: Text("Decrementar"),
            ),

            // IconButton(
            //   iconSize: 50,
            //   icon: curtiu == true
            //       ? Icon(Icons.favorite, color: Colors.red)
            //       : Icon(Icons.favorite_outline, color: Colors.black),
            //   onPressed: () {
            //     setState(() {
            //       nc = nc + 1;
            //       curtiu = true;
            //     });
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
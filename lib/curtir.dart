// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Curtir extends StatefulWidget {
  const Curtir({super.key});

  @override
  State<Curtir> createState() => _CurtirState();
}

class _CurtirState extends State<Curtir> {
  bool curtiu = false;
  int n = 0;

  @override
  void initState() {
    super.initState();
    obterLike(); //le a memoria na hora que abre a pagina
  }

  void obterLike() async {
    //busca um valor da memoria persistente
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      n = prefs.getInt('curtir') ?? 0;
      curtiu = prefs.getBool('like_2') ?? false;
    });
  }

  void salvarlike(int cont, bool like) async {
    //salva um valor na memoria persistente
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('curtir', cont);
    prefs.setBool('like_2', like);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 235, 4, 4),
        title: Text("Curtir"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Curtiu $n vezes",
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              iconSize: 50,
              icon: curtiu == true
                  ? Icon(Icons.favorite, color: Colors.red)
                  : Icon(Icons.favorite_outline, color: Colors.black),
              onPressed: () {
                setState(() {
                  n = n + 1;
                  curtiu = true;
                });
                salvarlike(n, curtiu);
              },
            ),
          ],
        ),
      ),
    );
  }
}

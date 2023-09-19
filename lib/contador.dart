// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int x = 0; //variavel de estado

  @override
  void initState() {
    super.initState();
    obtemValor(); //le a memoria na hora que abre a pagina
  }

  void obtemValor() async {
    //busca um valor da memoria persistente
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      x = prefs.getInt('contador') ?? 0;
    });
  }

  void salvaValor(int valor) async {
    //salva um valor na memoria persistente
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('contador', valor);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 173, 102, 8),
        title: Text("Meu Aplitcativo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(x.toString()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 97, 202, 65)),
              onPressed: () {
                setState(() {
                  x = x + 1;
                });
                salvaValor(x); //manda persistir o x
              },
              child: Text("Acrescentar"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                setState(() {
                  x = x - 1;
                });
                salvaValor(x);
              },
              child: Text("Decrementar"),
            ),
          ],
        ),
      ),
    );
  }
}

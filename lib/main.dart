// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'contador.dart';
import 'cadastro.dart';
import 'login.dart';
import 'curtir.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(PaginaInicial());
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: [
        Locale("pt", "BR"),
        // Locale("en", "US"),
      ],
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      routes: {
        '/': (context) => Home(),
        '/contador': (context) => Contador(),
        '/curtir': (context) => Curtir(),
        '/cadastro': (context) => Cadastro(),
        '/login': (context) => Login(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.calculate,
              size: 46,
              color: Colors.brown,
            ),
            title: Text("Contador"),
            subtitle: Text("Exemplo de incremento"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, "/contador");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              size: 46,
              color: Colors.greenAccent,
            ),
            title: Text("Curtir"),
            subtitle: Text("Exemplo de curtir e descurtir"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, "/curtir");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              size: 46,
              color: Colors.orangeAccent,
            ),
            title: Text("Cadastrar"),
            subtitle: Text("Exemplo de cadastrar"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, "/cadastro");
            },
          ),

          ListTile(
            leading: Icon(
              Icons.account_box,
              size: 46,
              color: Color.fromARGB(255, 185, 80, 218),
            ),
            title: Text("Login"),
            subtitle: Text("Exemplo de Login"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, "/login");
            },
          ),
        ],
      ),
    );
  }
}

//pergunta da prova: 4
//1- o que é um widget
//2- diferenças dos tipos de widget: stateless e stateful;

import 'package:appevento/Screens/CustomWidgets/menuInferior.dart';
import 'package:appevento/Screens/Pedidos/Pedidos.dart';
import 'package:appevento/Screens/Profile/profile.dart';
import 'package:appevento/Screens/search/search.dart';
import 'package:appevento/Screens/telaInicio/telaInicio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelecionado = 0;

  //ir para o próximo item
  void nextStation(int posicao) {
    setState(() {
      itemSelecionado = posicao;
    });
  }

//lista de pagina
  List<Widget> telas = const [
    TelaInicio(),
    Search(),
   Pedidos(),
    Profile(),
 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: telas.elementAt(itemSelecionado),
      ),
      bottomNavigationBar: bottomNavigationBar(itemSelecionado, nextStation),
    );
  }
}
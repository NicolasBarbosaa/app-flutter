import 'package:flutter/material.dart';

class Pedidos extends StatefulWidget {
  const Pedidos({super.key});

  @override
  State<Pedidos> createState() => _PedidosState();
}

class _PedidosState extends State<Pedidos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 35, 44),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 35, 44),
        title: Image.asset(
          'assets/Logo.png',
          height: 200,
          width: 200,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/duvida.png',
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Você ainda não tem Ingressos',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

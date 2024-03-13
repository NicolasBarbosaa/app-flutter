import 'package:appevento/Screens/CustomWidgets/Card.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({Key? key}) : super(key: key);

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 35, 44),
        title: Image.asset(
          'assets/Logo.png',
          height: 200, // Defina a altura desejada para a logo
          width: 200, // Defina a largura desejada para a logo
        ),
        centerTitle: true, // Centralizar o título (logo)
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.redeem, color: Colors.white),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(
              255, 6, 35, 44), // Mude isso para a cor de fundo desejada
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 40,
                      width: 155,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 44, 71, 81),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.map,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'São Paulo',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.1),
                              child: Icon(
                                Icons.expand_more,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 40,
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 44, 71, 81),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                          const Text('Descubra ',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey)),
                          DefaultTextStyle(
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                RotateAnimatedText(
                                  'shows',
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                RotateAnimatedText(
                                  'restaurantes',
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                RotateAnimatedText(
                                  'eventos',
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                RotateAnimatedText(
                                  'exposições',
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                RotateAnimatedText(
                                  'cinemas',
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                RotateAnimatedText(
                                  'espetáculos ao vivo',
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                              onTap: () {
                                print("Tap Event");
                              },
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(2.1),
                            child: Container(
                              width: 38,
                              height: 38,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 69, 110, 124),
                                  shape: BoxShape.circle),
                              child: Icon(Icons.calendar_today,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Para Você',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  cardHome('Novo!', 'hotWheelsEvento.jpg', 'Oca',
                      'Hot Wheels City Experience - São Paulo', '36,80'),
                  cardHome('4.5', 'passeioBalao.jpg', 'Balão Mágico',
                      'Passeio de Balão em Boituva', '499,00'),
                  cardHome('6.9', 'luzVermelha.jpg', 'Migs',
                      'A Casa da Luz Vermelha', '69,69'),
                  cardHome('5.0', 'jogosTabuleiro.jpg', 'Rua Vieira Morais',
                      'Tarde/Noite de Jogos para toda a família', '10,00'),
                ],
              ),
            ),
            const SizedBox(height: 20), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DESTAQUES IMPERDÍVEIS',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 44, 71, 81),
                      borderRadius:
                          BorderRadius.circular(20), 
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          'assets/imaginedragons.gif',
                          fit: BoxFit
                              .cover, 
                        ),
                        SizedBox(height: 10),
                       
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Show Imagine Dragons',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Estabelecimentos para Você!',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  cardHome('9.0', 'churrascaria.jpg', 'Osasco',
                      'Churrascaria Terminar', '50,00'),
                  cardHome('9.5', 'esfiha.jpg', 'São Paulo',
                      'Rodízio de Esfiha Roverí', '60,00'),
                  cardHome('10.0', 'japones.jpg', 'Liberdade',
                      'Rodízio Japonês Mygo', '96,89'),
                  cardHome('10.0', 'pastel.jpg', 'Pq Continental', 'Pastelaria',
                      '36,00'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Eventos Imperdíveis',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            SizedBox(
              height: 150, 
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  gifCard('assets/livros.gif', 'Bienal do Livro'),
                  gifCard('assets/cs.gif', 'Final CS 2'),
                  gifCard('assets/lol.gif', 'Final LOL'),
                  gifCard('assets/ccxp.gif', 'CCXP 2024'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}

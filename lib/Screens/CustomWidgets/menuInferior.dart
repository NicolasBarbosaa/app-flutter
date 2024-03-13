import 'package:flutter/material.dart';

//função que retorna um bottomNavigationBar
BottomNavigationBar bottomNavigationBar(int itemSelecionado, nextStation) {
  return BottomNavigationBar(
    currentIndex: itemSelecionado,
    onTap: nextStation,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white,
    items: [
      bottomNavigationBarItem(Icons.home, 'For You'),
      bottomNavigationBarItem(Icons.search, 'Search'),
      bottomNavigationBarItem(Icons.loyalty, 'Tickets'),
      bottomNavigationBarItem(Icons.person, 'Profile')
    ],
    unselectedLabelStyle: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  );
}

//função que retorna um bottomNavigationBarItem
BottomNavigationBarItem bottomNavigationBarItem(IconData icon, String texto) {
  return BottomNavigationBarItem(
    backgroundColor: Color.fromARGB(255, 44, 71, 81),
    icon: Icon(
      icon,
      color: Colors.grey,
    ),
    label: texto,
  );
}

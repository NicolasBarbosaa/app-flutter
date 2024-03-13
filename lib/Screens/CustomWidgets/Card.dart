import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Widget cardBusca(double largura, double altura, String img, String text) {
  return Stack(
    children: [
      Container(
        width: largura,
        height: altura,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget listTile(IconData iconLeading, String title, String subtitle) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 44, 71, 81)),
    child: ListTile(
      onTap: () {},
      leading: Icon(iconLeading, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
      ),
    ),
  );
}

Widget cardHome(
    String avaliacao, String img, String local, String titulo, String valor) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      width: 225,
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                img,
                width: double.infinity,
                fit: BoxFit.fill, 
                height: 150, 
              ),
              SizedBox(
                width: 100,
                child: Card(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(4, 4, 0, 0),
                        child: Text(
                          avaliacao,
                          style: const TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 130,
            width: 225, 
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 69, 110, 124),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        MdiIcons.mapMarkerOutline,
                        color: Colors.grey,
                      ),
                      Text(
                        local,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      const Text(
                        'De R\$ ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        valor,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget gifCard(String gifPath, String title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: 170,
      child: Container(
        width: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              gifPath,
              height: 100,
              width: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 44, 71, 81),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

import 'package:bitebank/main.dart';
import 'package:bitebank/screens/lista_contatos.dart';
import 'package:flutter/material.dart';
import 'package:bitebank/Palette.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.darkGreen,
        title: Text('Dashboard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //Horizontal
        crossAxisAlignment: CrossAxisAlignment.start, //Vertical
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/bytebank_logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Theme.of(context).primaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => ListaContatos(),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.people,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      Text(
                        'Contatos',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
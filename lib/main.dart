import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Types de Boutons'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Bouton textuel
              TextButton(
                onPressed: () {
                  var t=5;
                  // Action à effectuer lorsque le bouton est pressé
                  print(t);
                },
                child: Text('Envoyer'),
                style: TextButton.styleFrom(
                  primary: Colors.blue, // Couleur du texte
                  backgroundColor: Colors.grey[200], // Couleur de fond
                  textStyle: TextStyle(fontWeight: FontWeight.bold), // Style du texte
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30), // Espacement interne
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), // Forme du bouton
                ),
              ),
              SizedBox(height: 10), // Espacement vertical

              // Bouton élevé (Elevated Button)
              ElevatedButton(
                onPressed: () {
                  // Action à effectuer lorsque le bouton est pressé
                  print('Bouton Élevé Pressé');
                },
                child: Text('Bouton Élevé'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Couleur de fond
                  onPrimary: Colors.red, // Couleur du texte
                  padding: EdgeInsets.all(20), // Espacement interne
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), // Forme du bouton
                ),
              ),
              SizedBox(height: 10), // Espacement vertical

              // Bouton de texte plat (Outlined Button)
              OutlinedButton(
                onPressed: () {
                  // Action à effectuer lorsque le bouton est pressé
                  print('Bouton de Texte Plat Pressé');
                },
                child: Text('Bouton de Texte Plat'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.red, // Couleur du texte
                  side: BorderSide(color: Colors.red), // Couleur et largeur de la bordure
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30), // Espacement interne
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)), // Forme du bouton
                ),
              ),
              SizedBox(height: 10), // Espacement vertical

              // Bouton d'icône
              IconButton(
                icon: Icon(Icons.monitor_sharp),
                onPressed: () {
                  // Action à effectuer lorsque le bouton est pressé
                  print('Bouton d\'Icône Pressé');
                },
                color: Colors.red, // Couleur de l'icône
                iconSize: 40, // Taille de l'icône
              ),

              SizedBox(height: 10), // Espacement vertical

              // Bouton MaterialButton
              MaterialButton(
                onPressed: () {
                  // Action à effectuer lorsque le bouton est pressé
                  print('MaterialButton Pressé');
                },
                child: Text('MaterialButton'),
                color: Colors.blue, // Couleur de fond
                textColor: Colors.white, // Couleur du texte
                padding: EdgeInsets.all(20), // Espacement interne
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), // Forme du bouton
              ),
            ],
          ),
        ),
      ),
    );
  }
}
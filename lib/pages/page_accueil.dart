import 'package:flutter/material.dart';

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 82, 4),
        foregroundColor: Colors.white,
        title: const Text("App INGC ESMT"),
        centerTitle: true,
        //leading: Icon(Icons.person),
        leading: IconButton(
          icon: const Icon(Icons.person),
          tooltip: "Profil",
          onPressed: () {
            // instructions pour naviguer vers la page de profil
            print("Page de profil ici");
            Navigator.pushNamed(context, "/profil");
          },

        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: "Rechercher",
            onPressed: () {
              // instructions pour naviguer vers la page de recherche
              print("Page de recherche ici");
            },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: "Paramètres",
              onPressed: () {
                // instructions pour naviguer vers la page de paramètres
                print("Page de paramètres ici");
              },
            ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          
          children: [
            Text("Bienvenue !!"),
            Text("Ceci est la page d'accueil"),
          ],)
      ),
    );
  }
}
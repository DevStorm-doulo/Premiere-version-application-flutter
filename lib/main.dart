import "package:app_ingc1/pages/page_accueil.dart";
import "package:app_ingc1/pages/page_parametres.dart";
import "package:app_ingc1/pages/page_profil.dart";
import "package:flutter/material.dart";

void main() {
  runApp(const MonApplication);
}

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Premiere Application",
      home: PageAccueil(),
      routes: {
        "/accueil": (context) => PageAccueil(),
        "/profil": (context) => PageProfil(),
        "/parametres": (context) => PageParametres(),
      },
      onUnknownRoute: (context) => MaterialPageRoute(
        builder: (context) => PageAccueil(),
        ),
    );
  }
}
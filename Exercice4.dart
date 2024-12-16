import 'dart:io';

void main() {
  Map<String, Map<String, String>> dictionnaire = {
    'Python': {
      'Annee_Creation': '2006',
      'Createur': 'Guido van Rossum',
      'Description': 'Langage orienté IA et très facile',
    },
    'Dart': {
      'Annee_Creation': '2010',
      'Createur': 'Google',
      'Description': 'Langage orienté dev mobile',
    },
    'Flutter': {
      'Annee_Creation': '2017',
      'Createur': 'Google',
      'Description': 'Framework pour le développement d\'applications mobiles',
    },
    'C': {
      'Annee_Creation': '1972',
      'Createur': 'Dennis Ritchie',
      'Description': 'Langage système, puissant, typage statique',
    },
    'PHP': {
      'Annee_Creation': '1995',
      'Createur': 'Rasmus Lerdorf',
      'Description': 'Langage de script côté serveur pour le web',
    },
    'HTML': {
      'Annee_Creation': '1993',
      'Createur': 'Tim Berners-Lee',
      'Description': 'Langage de balisage pour le développement web',
    },
    'CSS': {
      'Annee_Creation': '1996',
      'Createur': 'Håkon Wium Lie, Bert Bos',
      'Description': 'Langage pour styliser des pages web',
    },
    'JavaScript': {
      'Annee_Creation': '1995',
      'Createur': 'Brendan Eich',
      'Description': 'Langage de script pour le web, interactif',
    },
    'C++': {
      'Annee_Creation': '1983',
      'Createur': 'Bjarne Stroustrup',
      'Description':
          'Langage orienté objet, puissant, pour systèmes et applications',
    },
    'MySQL': {
      'Annee_Creation': '1995',
      'Createur': 'Michael Widenius',
      'Description': 'Système de gestion de bases de données relationnelles',
    },
  };

  print("Dictionnaire des LANGAGES DE PROGRAMMATION ET DE BALISAAGE \n");

  print(
      "Entrez le nom du langage ou Entrez une lettre se trouvant dans le nom du langage : ");

  String? langage = stdin.readLineSync();

  // Arrête le programme si langage est vide
  if (langage!.isEmpty) {
    print("Entrez invalide");
    return;
  }

  List<String> key_list =
      dictionnaire.keys.toList(); // Contient la liste des clés du dictionnaire

  List<String> key_list_min = []; // la liste de clés en miniscules

  List<int> key_verif =
      []; // liste des index des langages langages trouvés à partir de l'entrée de l'ulisateur

  // Conversion des clés en miniscule
  for (var mot in key_list) {
    key_list_min.add(mot.toLowerCase());
  }
  // Entrée de la donnée

  // Vérification de la requête
  //if (langage != null) {
    // Au cas où l'entrée sera une seule lettre, renvoie l'index des mots contenant cette lettre dans key_verif
    if (langage.length > 1) {
      for (var mot in key_list_min) {
        if (mot == langage.toLowerCase()) {
          key_verif.add(key_list_min.indexOf(mot));
        }
      }
      // Au cas où l'entrée est un mot, verifie si ce mot est dans la liste des clés et renvoie son index dans key_verif si true
    } else if (langage.length == 1) {
      for (var mot in key_list_min) {
        if (mot.contains(langage.toLowerCase())) {
          key_verif.add(key_list_min.indexOf(mot));
        }
      }
    }
  
  // Affichage des définitions
  if (key_verif.length != 0) {
    print(
        "Langage \t\t Année de Création \t\t  Créateur(s) \t\t Description \n");
  } else {
    print("Le mot renseigné n'est pas dans le dictionnaire");
  }
  for (var i in key_verif) {
    String Nom = key_list[i];
    String? Annee = dictionnaire[key_list[i]]!['Annee_Creation'];
    String? Creator = dictionnaire[key_list[i]]!['Createur'];
    String? Descritp = dictionnaire[key_list[i]]!['Description'];

    print("$Nom \t\t $Annee \t\t $Creator \t\t $Descritp");
  }
}

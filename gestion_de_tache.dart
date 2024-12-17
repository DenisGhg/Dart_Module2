import 'dart:io';


void main() {
  List<String> taches = [];
  print("Bienvenue dans le gestionnaire des tâches \n");
  print("""
    Menu :
    Ajouter ou A pour ajouter une tâche;
    Afficher ou P pour afficher la liste des tâches;
    Supprimer ou S pour supprimer une tâche;
    Quitter pour fermer le programme;
""");
  while (true) {
    List<String> tache_miniscule = taches.map((e) => e.toLowerCase()).toList();
    print(tache_miniscule);

    print("Entrez l'action à exécuter : ");
    String? action = stdin.readLineSync();

    if (action!.toLowerCase() == "ajouter" || action!.toLowerCase() == 'a') {
      print("Entrez la tâche à ajouter");

      String? ajout = stdin.readLineSync();

      taches.add(ajout!);

      print("La tâche '$ajout' a été ajoutée avec succès");
    } else if (action!.toLowerCase() == "afficher" ||
        action!.toLowerCase() == "p") {
      print(taches);

    } else if (action!.toLowerCase() == "supprimer" ||
        action!.toLowerCase() == "s") {
      print("Entrez le nom de la tâche à supprimer : ");

      String? retrait = stdin.readLineSync();

      if (tache_miniscule.contains(retrait!.toLowerCase())) {
        taches.removeAt(tache_miniscule.indexOf(retrait.toLowerCase()));

        print("Ma tâche '$retrait' a été retirée avec succès");
      } else {
        print("La tâche '$retrait' n'existe pas dans la liste des tâches");
      }

    } else if (action!.toLowerCase() == "quitter" ||
        action!.toLowerCase() == "q") {
      break;
    } else {
      print("L'action n'existe pas");
    }
  }
}

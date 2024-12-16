void main() {
  // Question a

  String chaine1 = "Institut";

  String chaine2 = "Papa et les enfants";

  String chaine3 = "Xanax";

  String chaine1_Renv = chaine1.split('').reversed.join('');

  print(" \nLa version renversée de '$chaine1' est : $chaine1_Renv \n");

  String chaine2_Renv = chaine2.split('').reversed.join('');

  print("La version renversée de '$chaine2' est : $chaine2_Renv \n");

  String chaine3_Renv = chaine3.split('').reversed.join('');

  print("La version renversée de '$chaine3' est : $chaine3_Renv \n");

  // Question b

  String chaine4 = "Les enfants ont faim";

  String chaine4_Renv = chaine4.split(' ').reversed.join(' ');

  print("L'inversion de l'ordre des mots '$chaine4' donne : $chaine4_Renv \n");

  // Question c

  List liste_Mots = chaine4.split(' ');

  List liste_Mots_Inv = [];

  for (var mot in liste_Mots) {
    liste_Mots_Inv.add(mot.split('').reversed.join(''));
  }

  print(
      "L'inversion de l'ordre des lettres de chaque mot de la chaine '$chaine4' donne : ${liste_Mots_Inv.join(' ')} \n");
}

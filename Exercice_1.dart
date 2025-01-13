class Voiture {
  // Attributs de la classe
  String marque;
  int vitesseMax;
  int annee;

  // Constructeur pour initialiser les attributs
  Voiture(this.marque, this.vitesseMax, this.annee);

  // Méthode pour afficher les informations de la voiture
  void infos() {
    print('Marque : $marque');
    print('Vitesse Max : $vitesseMax km/h');
    print('Année : $annee');
  }
}

void main() {
  // Création d'une instance de la classe Voiture
  var voiture1 = Voiture('Toyota', 220, 2021);

  // Appel de la méthode infos()
  voiture1.infos();
}
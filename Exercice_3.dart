// Partie A : Classes Rectangle et Carré
class Rectangle {
  double longueur;
  double largeur;

  Rectangle(this.longueur, this.largeur);

  // Méthode pour calculer l'aire
  double aire() => longueur * largeur;

  // Méthode pour calculer le périmètre
  double perimetre() => 2 * (longueur + largeur);
}

class Carre extends Rectangle {
  Carre(double cote) : super(cote, cote); 
}

// Partie B : Classe abstraite Animal
abstract class Animal {
  String nom;
  int nombreDePattes;
  String couleurPlumage;

  Animal(this.nom, this.nombreDePattes, this.couleurPlumage);

  // Méthodes abstraites
  void cri();

  void courir() {
    print('$nom court avec ses $nombreDePattes pattes.');
  }
}

class Chien extends Animal {
  Chien(String nom, String couleurPlumage) : super(nom, 4, couleurPlumage);

  @override
  void cri() {
    print('$nom aboie : "Woof!"');
  }
}

class Poulet extends Animal {
  Poulet(String nom, String couleurPlumage) : super(nom, 2, couleurPlumage);

  @override
  void cri() {
    print('$nom cacarde : "Cot cot cot!"');
  }
}

void main() {
  // Test des classes Rectangle et Carré
  var rectangle = Rectangle(5, 3);
  print('Rectangle - Aire : ${rectangle.aire()}, Périmètre : ${rectangle.perimetre()}');

  var carre = Carre(4);
  print('Carré - Aire : ${carre.aire()}, Périmètre : ${carre.perimetre()}');

  // Test des classes Animal, Chien et Poulet
  var chien = Chien('Rex', 'marron');
  chien.cri();
  chien.courir();

  var poulet = Poulet('Clara', 'blanc');
  poulet.cri();
  poulet.courir();
}
// Partie A : Classes Rectangle et Carré
class Rectangle {
  double longueur;
  double largeur;

  Rectangle(this.longueur, this.largeur);

  // Méthode pour calculer l'aire
  double aire() => longueur * largeur;

  // Méthode pour calculer le périmètre
  double perimetre() => 2 * (longueur + largeur);
}

class Carre extends Rectangle {
  Carre(double cote) : super(cote, cote); 
}

// Partie B : Classe abstraite Animal
abstract class Animal {
  String nom;
  int nombreDePattes;
  String couleurPlumage;

  Animal(this.nom, this.nombreDePattes, this.couleurPlumage);

  // Méthodes abstraites
  void cri();

  void courir() {
    print('$nom court avec ses $nombreDePattes pattes.');
  }
}

class Chien extends Animal {
  Chien(String nom, String couleurPlumage) : super(nom, 4, couleurPlumage);

  @override
  void cri() {
    print('$nom aboie : "Woof!"');
  }
}

class Poulet extends Animal {
  Poulet(String nom, String couleurPlumage) : super(nom, 2, couleurPlumage);

  @override
  void cri() {
    print('$nom cacarde : "Cot cot cot!"');
  }
}

void main() {
  // Test des classes Rectangle et Carré
  var rectangle = Rectangle(5, 3);
  print('Rectangle - Aire : ${rectangle.aire()}, Périmètre : ${rectangle.perimetre()}');

  var carre = Carre(4);
  print('Carré - Aire : ${carre.aire()}, Périmètre : ${carre.perimetre()}');

  // Test des classes Animal, Chien et Poulet
  var chien = Chien('Rex', 'marron');
  chien.cri();
  chien.courir();

  var poulet = Poulet('Clara', 'blanc');
  poulet.cri();
  poulet.courir();
}

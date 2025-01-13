// Classe abstraite Animal
abstract class Animal {
  String nom;
  int nombreDePattes;

  Animal(this.nom, this.nombreDePattes);

  // Méthodes abstraites
  void cri();
  void courir();
}

// Classe Chien qui hérite de Animal
class Chien extends Animal {
  Chien(String nom) : super(nom, 4);

  @override
  void cri() {
    print('$nom aboie : "Woof!"');
  }

  @override
  void courir() {
    print('$nom court rapidement avec ses $nombreDePattes pattes.');
  }
}

// Classe Poulet qui hérite de Animal
class Poulet extends Animal {
  Poulet(String nom) : super(nom, 2);

  @override
  void cri() {
    print('$nom cacarde : "Cot cot cot!"');
  }

  @override
  void courir() {
    print('$nom court en trottinant avec ses $nombreDePattes pattes.');
  }
}

void main() {
  var chien = Chien('Rex');
  chien.cri();
  chien.courir();

  var poulet = Poulet('Clara');
  poulet.cri();
  poulet.courir();
}
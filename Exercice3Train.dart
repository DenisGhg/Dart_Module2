// Declaration
enum Saison {
  Primptemps,
  Ete,
  Automne,
  Hiver;

  bool get estChaud => this == Primptemps || this == Ete;
}

void main() {
  // Verification du type de saison
  for (var saison in Saison.values) {
    if (saison.estChaud == true) {
      print("$saison : Chaud");
    } else {
      print("$saison : Froid");
    }
  }
}

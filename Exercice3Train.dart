double moyenne(List<int> moyennes) {
  double somme = 0;
  for (var i in moyennes) {
    somme += i;
  }

  return somme / moyennes.length;
}

void main() {
  List<int> entiers = [12, 10, 20, 13, 14, 19, 9];

  print("La moyenne de ces nombres est : ${moyenne(entiers)}");
}

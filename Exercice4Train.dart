import 'dart:io';


// Fonction simple 
String estBissextile(int an) {
  if (an % 4 == 0) {
    if (an % 100 == 0) {
      if (an % 400 == 0) {
        return "Bissextile";
      }
      return "Non Bissextile";
    }
    return "Bissextile";
  }
  return "Non Bissextile";
}




void main() {
  print("Entrez l'année : ");
  String? year = stdin.readLineSync();

  int year_int = int.parse(year!);

  print(estBissextile(year_int));
}

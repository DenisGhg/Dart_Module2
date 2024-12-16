import 'dart:io';

void main() {
  print("Entrez votre note : ");
  String? note = stdin.readLineSync();

  double note_doub = 0;

  // Conversion en double

  try {
    note_doub = double.parse(note!);
  } catch (e) {
    print("L'entrée n'est pas un nombre");
  }

  if (note_doub >= 0 && note_doub < 7) {
    print("Mediocre");
  } else if (note_doub >= 7 && note_doub < 9) {
    print("Insuffisant");
  } else if (note_doub >= 10 && note_doub < 12) {
    print("Passable");
  } else if (note_doub >= 12 && note_doub < 14) {
    print("Assez-Bien");
  } else if (note_doub >= 14 && note_doub < 16) {
    print("Bien");
  } else if (note_doub >= 16 && note_doub <= 20) {
    print("Très-Bien");
  } else {
    print("Note incorrecte");
  }
}

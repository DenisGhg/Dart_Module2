import 'dart:io';

void main() {
  print("Entrez une chaîne : ");

  String? chaine = stdin.readLineSync();

  if (chaine!.toLowerCase() ==
      chaine.toLowerCase().split('').reversed.join('')) {
    print("$chaine est un Palindrome");
  } else {
    print("$chaine n'est pas un palindrome");
  }
}

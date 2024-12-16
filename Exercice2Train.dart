void main() {
  Map<String, Map<String, double>> note_Etudients = {
    "Denis_GOHOUNGO": {
      'Dev_Web': 19,
      'Dev_Mobile': 20,
    },
    "Bertrand_HOUKAKOU": {
      'Dev_Web': 17,
      'Dev_Mobile': 17.5,
    },
    "Octave_BIDOSSESSI": {
      'Dev_Web': 15,
      'Dev_Mobile': 14,
    },
    "Rohnel_ASSOGBA" : {
      'Dev_Web' : 18,
      'Dev_Mobile' : 18.5,
    }
  };

  note_Etudients.addAll({
    "Claudia_AWOMASSO": {
      'Dev_Web': 15,
      'Dev_Mobile': 15,
    },
  });

  List<String> etudients = note_Etudients.keys.toList();

  Map<String, double> moyenne_Etudients = {};

  for (var cle in etudients) {
    double? note_Web = note_Etudients["$cle"]!['Dev_Web'];
    double? note_Mob = note_Etudients["$cle"]!['Dev_Mobile'];
    moyenne_Etudients.addAll({cle: ((note_Mob! + note_Web!) / 2).toDouble()});
  }

  print(moyenne_Etudients);
}

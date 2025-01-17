// Classe abstraite Employe
abstract class Employe {
  String nom;

  Employe(this.nom);

  // Méthode abstraite pour calculer le salaire
  double calculerSalaire();
}

// Classe EmployePermanent
class EmployePermanent extends Employe {
  double salaireMensuel;
  double prime;

  EmployePermanent(String nom, this.salaireMensuel, this.prime) : super(nom);

  @override
  double calculerSalaire() {
    return salaireMensuel + prime;
  }
}

// Classe EmployeContractuel
class EmployeContractuel extends Employe {
  double tauxHoraire;
  int heuresTravaillees;

  EmployeContractuel(String nom, this.tauxHoraire, this.heuresTravaillees) : super(nom);

  @override
  double calculerSalaire() {
    return tauxHoraire * heuresTravaillees;
  }
}

void main() {
  // Création des employés
  Employe permanent = EmployePermanent('Alice', 3000.0, 500.0);
  Employe contractuel = EmployeContractuel('Bob', 20.0, 120);

  // Affichage des salaires
  print('${permanent.nom} - Salaire : \$${permanent.calculerSalaire()}');
  print('${contractuel.nom} - Salaire : \$${contractuel.calculerSalaire()}');
}

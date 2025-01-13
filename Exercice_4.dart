// Classe abstraite Employe
abstract class Employe {
  String nom;
  double tauxHoraire;
  int heuresTravaillees;

  Employe(this.nom, this.tauxHoraire, this.heuresTravaillees);

  // Méthode abstraite pour calculer le salaire
  double calculerSalaire();
}

// Classe EmployePermanent qui hérite de Employe
class EmployePermanent extends Employe {
  double primeFixe;

  EmployePermanent(String nom, double tauxHoraire, int heuresTravaillees, this.primeFixe)
      : super(nom, tauxHoraire, heuresTravaillees);

  @override
  double calculerSalaire() {
    // Calcul du salaire : (taux horaire * heures travaillées) + prime fixe
    return (tauxHoraire * heuresTravaillees) + primeFixe;
  }
}

// Classe EmployeContractuel qui hérite de Employe
class EmployeContractuel extends Employe {
  double tauxHoraireSupplémentaire;

  EmployeContractuel(String nom, double tauxHoraire, int heuresTravaillees, this.tauxHoraireSupplémentaire)
      : super(nom, tauxHoraire, heuresTravaillees);

  @override
  double calculerSalaire() {
    // Calcul du salaire : (taux horaire * heures travaillées) + heures supplémentaires * taux horaire supplémentaire
    return (tauxHoraire * heuresTravaillees) + (tauxHoraireSupplémentaire * (heuresTravaillees - 160));
  }
}

void main() {
  // Création d'un Employé Permanent
  var employePermanent = EmployePermanent('Alice', 20, 160, 500);
  print('${employePermanent.nom} a un salaire de : ${employePermanent.calculerSalaire()}');

  // Création d'un Employé Contractuel
  var employeContractuel = EmployeContractuel('Bob', 15, 180, 25);
  print('${employeContractuel.nom} a un salaire de : ${employeContractuel.calculerSalaire()}');
}
class CompteBancaire {
  // Attribut privé pour le solde
  double _solde;

  // Constructeur pour initialiser le solde
  CompteBancaire(this._solde);

  // Méthode pour effectuer un dépôt
  void deposer(double montant) {
    if (montant > 0) {
      _solde += montant;
      print('Dépôt de \$${montant.toStringAsFixed(2)} effectué.');
    } else {
      print('Le montant doit être positif.');
    }
  }

  // Méthode pour effectuer un retrait
  void retirer(double montant) {
    if (montant > 0 && montant <= _solde) {
      _solde -= montant;
      print('Retrait de \$${montant.toStringAsFixed(2)} effectué.');
    } else if (montant > _solde) {
      print('Fonds insuffisants.');
    } else {
      print('Le montant doit être positif.');
    }
  }

  // Méthode privée pour retirer tout le solde
  void _viderCompte() {
    print('Le compte a été vidé. \$${_solde.toStringAsFixed(2)} retirés.');
    _solde = 0;
  }

  // Méthode publique pour afficher le solde actuel
  void afficherSolde() {
    print('Solde actuel : \$${_solde.toStringAsFixed(2)}');
  }
}

void main() {
  // Création d'un compte bancaire avec un solde initial de 1000
  var compte = CompteBancaire(1000.0);

  // Dépôt, retrait et affichage du solde
  compte.deposer(500);
  compte.afficherSolde();

  compte.retirer(300);
  compte.afficherSolde();

}
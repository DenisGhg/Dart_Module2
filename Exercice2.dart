void main() {
  List<int> entiers = [1, 0, 2, 5, 9, 0, 2, 2, 4, 3];

  Map<String, List<int>> similaire = {
    'ZERO': [],
    'UN': [],
    'DEUX': [],
    'TROIS': [],
    'QUATRE': [],
    'CINQ': [],
    'SIX': [],
    'SEPT': [],
    'HUIT': [],
    'NEUF': [],
  };

  for(var i in entiers){
    if(i == 0){
      similaire['ZERO']?.add(i);
    }
    else if(i == 1){
      similaire['UN']?.add(i);
    }
    else if(i == 2){
      similaire['DEUX']?.add(i);
    }
    else if(i == 3){
      similaire['TROIS']?.add(i);
    }
    else if(i == 4){
      similaire['QUATRE']?.add(i);
    }
    else if(i == 5){
      similaire['CINQ']?.add(i);
    }
    else if(i == 6){
      similaire['SIX']?.add(i);
    }
    else if(i == 7){
      similaire['SEPT']?.add(i);
    }
    else if(i == 8){
      similaire['HUIT']?.add(i);
    }
    else if(i == 9){
      similaire['NEUF']?.add(i);
    }    
  }
  print(similaire);
}

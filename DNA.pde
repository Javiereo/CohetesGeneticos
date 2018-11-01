class DNA {

  int [] genes; 
  float fitness;
  
  //Crea poblacion aleatoria
  DNA(int num) {
    genes=new int[num];
    for (int i=0 ; i<genes.length ; i++) {
      genes[i]=round(random(0, 7));
    }
  }
  
  void fitness(int cohete){
    int score=0;
    
    for(int i=0 ; i<genes.length ; i++){
      if(genes[i]>cohete){//SI LOS GENES SON MAYORES A LA POSICION DE COHETE
        score++;
      }
    }
    
    fitness=score/cohete;//?
  }
  
}

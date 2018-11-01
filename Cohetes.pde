int [][] pob;

Cohete [] roc;

void setup() {
  size(800, 600);
  
  pob=new int[100][8];
  roc=new Cohete[1];
  
  for(int j=0 ; j<100 ; j++){
    for(int i=0 ; i<8 ; i++){
      pob[j][i]=round(random(0, 7));
    }
  }
  
}

void draw() {
  background(255);
  
  for(int j=0 ; j<1 ; j++){
    for(int i=0 ; i<8 ; i++){
      roc[j].dir(pob[j][i]);
      roc[j].display();
      roc[j].mover();
    }
  }
  
}

class Cohete{
  PVector pos, mov;
  
  float size;
  
  Cohete(){
    pos=new PVector(0, height/2);
    
    mov=new PVector(0, 0);
  }
  
  void display(){
    fill(0);
    ellipse(pos.x, pos.y, 20, 20);
  }
  
  void dir(int _x){
    switch (_x){
      case 0://A
        mov.x=-0.1;
        mov.y=-0.1;
      break;
      case 1://B
        mov.y=-0.1;
      break;
      case 2://C
        mov.y=-0.1;
        mov.x=+0.1;
      break;
      case 3://D
        mov.x=+0.1;
      break;
      case 4://E
        mov.x=+0.1;
        mov.y=+0.1;
      break;
      case 5://F
        mov.y=+0.1;
      break;
      case 6://G
        mov.x=-0.1;
        mov.y=+0.1;
      break;
      case 7://H
        mov.x=-0.1;
      break;
    }
  }
  
  void mover(){
    pos.add(mov);
    mov.x=0;
    mov.y=0;
  }
  
  void limit(){
    if(mov.x<width){
      mov.x=+10;
    }
    if(mov.y<height){
      mov.y=+10;
    }
    if(mov.x>width){
      mov.x=-10;
    }
    if(mov.y>height){
      mov.y=-10;
    }
  }
  
}

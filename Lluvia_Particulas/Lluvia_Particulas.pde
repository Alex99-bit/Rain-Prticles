public class Gotas{
  
  Gotas(){}
  
  void SetPos(float x, float y, float diam){
    noStroke();
    //fill(#4040ff);
    circle(x,y,diam);
    
  }
  
}


public class Lluvia{
  float posX, posY, diam, auxY;
  
  Lluvia(float y, float diam){
    posY = y;
    auxY = posY;
    this.diam = diam;
  }
  
  Lluvia(float diam){
    posY = 1;
    auxY = posY;
    this.diam = diam;
  }
  
  Lluvia(){
    diam = 5;
    posY = 1;
    auxY = posY;
  }
  
  void Spawner(int num){
    // num = cantidad de gotas
    Gotas[] gota = new Gotas[num];
    posY+=10;
    
    for(int i = 0; i < num; i++){
      posX = random(0,width); // una pos en x aleatoria para cada gota
      gota[i] = new Gotas();
      gota[i].SetPos(posX, posY, diam);
      
      if(posY >= height){
        posY = auxY;
      }
    }
  }
}


class Lluvia2{
  float x,y,r;
  
  Lluvia2(float x,float y, float r){
    this.x = x;
    this.y = y;
    this.r = r;
  }
  
  void Elipse(){
    ellipse(x,y,r,r);
  }
  
}

Lluvia[] lluvia = new Lluvia[50];

void setup(){
  size(800,800);
  background(0);  
  
  for(int i=0;i<50;i++){
    lluvia[i] = new Lluvia(25*i,10);
  }
  
}

void draw(){
  //circle(width/2,50, 5);
  background(0);
  
  
  
  for(int i=0; i<50;i++){
    fill(#4040ff);
    lluvia[i].Spawner(50);
  }
  
  fill(255);
  circle(15,3,350);
  circle(185,3,450);
  circle(500,3,450);
  circle(700,3,350);
  //fill(255);
}

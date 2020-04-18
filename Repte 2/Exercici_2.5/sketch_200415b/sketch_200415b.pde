//Creem character bola1 i bola2 amb la herencia  de WALKER

character bola1, bola2;

// Variable booleana per saber si una de les dos boles guanya

boolean win = false;


//Creem els 4 PVectors els quals guardaran les posicions i les posicions inicials corresponents.
//Bola1=Player   Bola2=Enemy

PVector posBola1, posBola2;
PVector posInicialBola1, posInicialBola2;


void setup() {
  
  size(650,650); //Mide de la panttalla
  
  //Diem que els vectors PosicioInicial de cada bola, la seva posicio inicial sigui al mitg de la pantalla, amb una distancia de 60 unitats entre ells.
  
  posInicialBola1 = new PVector(width/2-30,height/2);
  posInicialBola2 = new PVector(width/2+30,height/2);
  
  // Inicialitzem les dos bolas de l'escena, amb el constructor de la clase character que son posicioInicial, mides,vides,nom,colors 1,2,3.
  
  bola1 = new character(posInicialBola1,30,5, "Warrior",0,142,0);
  bola2 = new character(posInicialBola2,30,3, "Enemy",245,50,0);
}



void draw() {
  
  background(150);
  
  
  //Calculem la distancia que hi ha entre bola1 i bola2 i si no hi ha gunayador seguim dibuixant la linia que uneix les dues boles.
  
  if(!win) {
    posBola1 = new PVector(bola1.getPosX(),bola1.getPosY());
    posBola2 = new PVector(bola2.getPosX(),bola2.getPosY());
    
    line(posBola1.x,posBola1.y,posBola2.x,posBola2.y);
    
    bola2.setDistanciaBola1(calculDistanciaBola2aBola1());
  }
  
  
  //Calculem la distancia que hi ha entre les dos boles, si  es superior a 100, la bola2 perd una vida i tornem al punt inicial.

  if(calculDistanciaBola2aBola1() > 99) {
    bola2.restarVides();
    resetPosicioInicial();
  }
  //Calculem la distancia que hi ha entre les dos boles, si  es inferior a 30, la bola1 perd una vida i tornem al punt inicial.
  
  if(calculDistanciaBola2aBola1() <= 29) {
    bola1.restarVides();
    resetPosicioInicial();
  }
  
  
  
 //Si bola2 segueix tenin vides, no para el joc. Si es queda sense vides fem apareixer Winner i Loser cada un en la bola corresponent.
  
  if(bola2.getVides() > 0){
    bola2.walk();
    bola2.display();
  } 
  
  
  else {
    bola2.setBola("Loser");
    bola1.setBola("Winner");
    win = true; //Diem que la variable win es true per fer apareixer Win o Lose i acabar el joc
  }
  
  
  
   //Si bola1 segueix tenin vides, no para el joc. Si es queda sense vides fem apareixer Winner i Loser cada un en la bola corresponent.

  if(bola1.getVides() > 0){
    bola1.walk();
    bola1.display();
  } 
  
  
  
  else {
    
    win = true; //Diem que la variable win es true per fer apareixer Win o Lose i acabar el joc

    bola2.setBola("Winner");

    bola1.setBola("Loser");
    
  }
}


//Calculem la distancia sense valors negatius entre la bola2 i la bola1

  int calculDistanciaBola2aBola1() {
  int dis;
  dis = (int)posBola1.x - (int)posBola2.x;
  dis = abs(dis);
  return dis;
}


// Aquest metode far apareixer les dos bolas a la posicio inicial
void resetPosicioInicial() {
 
  bola1.setPosX((int)posInicialBola1.x); //bola1
  bola1.setPosY((int)posInicialBola1.y); //bola1
  
 
  bola2.setPosX((int)posInicialBola2.x); //bola2
  bola2.setPosY((int)posInicialBola2.y); //bola2
}

//Declarem un objecte Mover.
Mover bola;
void setup() {
  
  
  
 size(640,360);
 
 //Inicialitzem l'objecte bola.
 bola=new Mover();


}



void draw() {
  background(25);
  
  //Cridem els metodes de la classe 
  bola.update();
    bola.display();
      bola.checkEdges();
     

      }
  

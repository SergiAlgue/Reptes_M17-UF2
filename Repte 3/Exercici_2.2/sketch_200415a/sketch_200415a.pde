
  //Declarem un objecte Mover.
  Mover mover;

  void setup() {
  
  
  
 size(640,360);
 
  //Inicialitzem l'objecte bola.
  mover=new Mover();


}



  void draw() {
  background(25);
  
  //Cridem els metodes de la classe 
  mover.update();
  mover.display();
  mover.checkEdges();
     

      }
  

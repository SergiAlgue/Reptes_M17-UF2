  
  //Conjunt de objectes que creerem
  Mover[] movers = new Mover[60];
   
   
  void setup() {
    size(1000,1000);
    background(255);
  //Inicialitzem el número d'objectes que hem introduït.
  for (int i = 0; i < movers.length; i++) {
      movers[i] = new Mover();
    }
  }
   
  void draw() {
    background(0);
    
  //Cridem els mètodes per tots els objectes que es crearan.
  for (int i = 0; i < movers.length; i++) {
      movers[i].update();
      movers[i].checkEdges();
      movers[i].display();
    }
  }

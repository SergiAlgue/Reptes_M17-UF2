class Mover {
 
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
 
  Mover() {
    //Posició random, els objectes començaran a una posició aleatòria
    location = new PVector(random(width),random(height));
    
     //Començaran amb una velocitat 0
    velocity = new PVector(0,0);
    //limit de velocitat 
    topspeed = 4;
  }
 
  void update() {
 
     // Creem i instànciem els PVectors que contenen l'ubicació del mouse i la direcció que tindra 'objecte.

    PVector mouse = new PVector(mouseX,mouseY);
    PVector direccio = PVector.sub(mouse,location);
   
   
    //Normalitzem el vector direccio
    direccio.normalize();
    direccio.mult(0.5);
    
    
    //Donem l'acceleració i movem l'objecte.
    acceleration = direccio;
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }
 
  //Mostra l'elipse amb la poscio x,y
  void display() {
    stroke(19);
    fill(255);
    ellipse(location.x,location.y,30,30);
  }
  
  
  //Metode que fa que si la bola va al limit de la pantalla aparegui per la banda contraria.
  void checkEdges() {
 
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
 
    if (location.y > height) {
      location.y = 0;
    }  else if (location.y < 0) {
      location.y = height;
    }
  }
}

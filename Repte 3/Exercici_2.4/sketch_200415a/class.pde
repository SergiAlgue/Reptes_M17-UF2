class Mover {
  
  //Creem les variables i els PVectors necessaris
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topSpeed;
  
  Mover() {
    //Posicio
    location = new PVector(random(width),random(height));
    //Velocitat
    velocity = new PVector(5,0);
    
    //Acceleracio
    acceleration = new PVector(0.05,0.05);
    //Velocitat maxima
    topSpeed = 5; 
  }
  
 
  
  void update() {
    // Creem i instànciem els PVectors que contenen l'ubicació del mouse i la direcció que tindra 'objecte.
    PVector mouse = new PVector(mouseX,mouseY);
    PVector dir = PVector.sub(mouse,location);
    
   //Normalitzem el vector direccio
    dir.normalize();
    dir.mult(0.5);
   
    //Donem l'acceleració i movem l'objecte.
    acceleration = dir;
    velocity.add(acceleration);
    velocity.limit(topSpeed);
    location.add(velocity);
  }
    
  //Mostra l'elipse amb la poscio x,y

  void display() {
    stroke(0);
    fill(255);
    ellipse(location.x,location.y,30,30);
  }
  //Metode que fa que si la bola va al limit de la pantalla aparegui per la banda contraria.

  void checkEdges() {
    if(location.x > width) {
      location.x = 0;
    }
    else if(location.x < 0) {
      location.x = width;
    }
    
    if(location.y > height) {
      location.y = 0;
    }
    else if(location.y < 0) {
      location.y = height;
    }
  }
  
  
}

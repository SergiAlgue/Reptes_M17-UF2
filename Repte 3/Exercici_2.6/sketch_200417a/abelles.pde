class abelles {
 
  //Creem els PVectors i les variables.
  PVector posicio;
  PVector velocitat;
  PVector acceleration;
  float topspeed;
 
  abelles() {
    //L'objecte començarà al mig de la pantalla.
    posicio = new PVector(random(width),random(height));
    
    //La velocitat inicial sera 0.
    velocitat = new PVector(0,0);
    //Limitdor.
    topspeed = 4;
  }
 
  void update() {
 
   // Creem i instànciem els PVectors que contenen l'ubicació del mouse i la direcció que tindra 'objecte.
    PVector mouse = new PVector(mouseX,mouseY);
    PVector direccio = PVector.sub(mouse,posicio);
    
    //Normalitzem el vector direccio
    direccio.normalize();
    direccio.mult(0.5);
    acceleration = direccio;
     
     //Donem l'acceleració i movem l'objecte. Tambe li afegim el limitador que hem creat.
    velocitat.add(acceleration);
    velocitat.limit(topspeed);
    posicio.add(velocitat);
  }
   //Mostra la imatge amb la poscio x,y i el tamañ de la imatge

  void display() {
    stroke(0);
    fill(175);
    image (img4, posicio.x, posicio.y,50,50);
  }
 
   //Metode que fa que si la bola va al limit de la pantalla aparegui per la banda contraria.
  void checkEdges() {
 
    if (posicio.x > width) {
      posicio.x = 0;
    } else if (posicio.x < 0) {
      posicio.x = width;
    }
 
    if (posicio.y > height) {
      posicio.y = 0;
    }  else if (posicio.y < 0) {
      posicio.y = height;
    }
  }
}

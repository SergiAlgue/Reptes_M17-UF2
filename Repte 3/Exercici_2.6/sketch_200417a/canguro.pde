class cangur {
 
  //Creem els PVectors i les variables.
  
  PVector posicio;
  PVector velocitat;
  PVector acceleracio;
  float mass; //Variable per donar-li massa a l'objecte 
    float topspeed;

 
   cangur(float m, float x) {
     mass = m;
    
    // Creem i instànciem els PVectors que contenen la posicio, velocitat, acceleracio i velocitat limit.

    posicio = new PVector(x-300,300);
    velocitat = new PVector(0,0);
    acceleracio = new PVector(0,0);
        topspeed = 5;

  }
 
  void applyForce(PVector force) {
       //la variable force canvia per la acceleracio

    acceleracio.add(force);
  }
   
 
 
  void update() {
    
    //la variable velocitat canvia per la acceleracio
    velocitat.add(acceleracio);
    
    //la variable posicio canvia per la velocitat
    posicio.add(velocitat);
    
    //Multipliquem el vector acceleracio
    acceleracio.mult(0);
    
    //li apliquem el limit de velocitat i acceleracio
    velocitat.limit(topspeed);
    acceleracio.limit(topspeed);


  }
  //Mostra la imatge amb posicio x i y, tambe li diem la mida de la imatge.
  void display() {
  image (img3, posicio.x, posicio.y,100,100);

  }
 
  //Metode que fa que si la bola va al limit de la pantalla aparegui per la banda contraria.
  void checkEdges() {
  
    if (posicio.x > width) {
      posicio.x = 3;
    } else if (posicio.x < 0) {
      posicio.x = width;
    }
 
    if (posicio.y > height) {
      velocitat.y *= -1;
      posicio.y = 500;
    }
  }
}

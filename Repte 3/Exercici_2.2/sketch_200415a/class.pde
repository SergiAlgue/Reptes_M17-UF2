  
  class Mover
  {
    //Declarem els PVectors
    PVector location;
    PVector velocity;
      PVector acceleration;
    //variable limit velocitat
    float topspeed;
    
    Mover(){
      
      //L'objecte començarà al mig de la pantalla i tindrà una velocitat 0, una acceleració que anirà restan (descendent).      
      
      //Posicio
      location = new PVector(width/2,height/2);
      //Velocitat
      velocity = new PVector(10,0);
      
      //acceleracio
      acceleration = new PVector(-0.009,0.01);
      
      //limit velocitat
      topspeed = 10;
    }
    void update(){
  
      //la velocitat canvia per l'acceleracio.
      velocity.add(acceleration);
      
      //limit de velocitat.
      velocity.limit(topspeed);
      
      //la posició canvia per la velocitat
  
      location.add(velocity);
    }
    
    //Mostra l'elipse amb velocitat i acceleració random
      void display(){
        stroke(0);
        fill(175);
        ellipse(location.x,location.y,16,16);
        
      }
      //Metode que fa que si la bola va al limit de la pantalla aparegui per la banda contraria.
  
      void checkEdges(){
        if(location.x>width){
          location.x=0;
        }
        else if(location.x<0){
          location.x=width;
        }
         if(location.y>height){
          location.y=0;
        }
        else if(location.y<0){
          location.y=height;
        }
      }
  }

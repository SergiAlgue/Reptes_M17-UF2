  
  class Mover
  {
    //Creem les variables i els PVectors necessaris
    PVector location;
    PVector velocity;
      PVector acceleration;
  
    float topspeed;
    
    Mover(){
      
    //L'objecte començarà al mig de la pantalla i tindrà una velocitat aleatòria
    location = new PVector(width/2,height/2);
      

    }
    
    
    void update(){
    //Diem que tingui una acceleració random entre 10
     acceleration = PVector.random2D();
     acceleration.mult(random(10));
  
           
      //Diem que tingui una velocitat random entre 10 
      velocity = PVector.random2D();
      velocity.mult(random(10));


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

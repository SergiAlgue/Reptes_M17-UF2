  //Variables utilitzades
  
  float posX;
  float posY;
  float velocitatY;
  float velocitatX;
  PImage img;
  PImage img2;
  PImage img3;
  PImage img4;
  
  
  
  
  
  void setup () {
    
//Carregam les imatges que utilitzarem.
    img2 = loadImage("logo 2.png");
    img3 = loadImage("logo 3.png");
  
  
  
  
    size (600,600);
    
  //Diem que les variables posX i posY divideixin l'amplada i l'altura per 1 i per tres per començar des de on volem en la pantalla.    posX= width/1;
    posY= height/3;
    
    velocitatY = 5;
    velocitatX = 5;
  
  //Determinem els valors de posX i posY y el desplaçament en X i Y
  }
  
  void draw () {
    background (255);
   
     //Creem el moviment en Y

    if (posY < 0){

      posY =0;
      velocitatY=5;
     }
    else if (posY > height){

      posY =height;
      velocitatX =-5;
      velocitatY =-5;
  
    }
   
   //Creem el moviment en X
   else if (posX < 0){ 
      posX =0;
      velocitatX=5;
   }
    else if (posX > height){

      posX =height;
      velocitatX =-5;

    }
  
    
      if (posX<width){
       image (img2, posX, posY, 100,100); // Li diem que l'el·lipse sigui la imatge que prèviament hem carregat.
   
      }
      
      if (posX>height/2){
       image (img3,posX, posY, 100,100); // Li diem que l'el·lipse sigui la imatge que prèviament hem carregat.
   
      }
     
    
   
      

   
  //Moviment de l'elipse el l'espai
  
    posX = posX+velocitatX; 
    posY = posY+velocitatY;
    
  }

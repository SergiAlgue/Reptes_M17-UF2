  //Conjunt de objectes(ocells) que creerem.

ocells[] ocells1 = new ocells[2];
ocells[] ocells2 = new ocells[2];
ocells[] ocells3 = new ocells[2];

  //Conjunt de objectes(abelles) que creerem.
  abelles[] abelles2 = new abelles[10];
  
  //Conjunt de objectes(cangurs) que creerem.
 cangur[] cangur2 = new cangur[2];
  
  //Conjunt de objectes(mosques) que creerem.
Mover[] mosques = new Mover[6];
   
    
    
    PImage img;
    PImage img2;
    PImage img3;
    PImage img4;
    PImage img5;




  


void setup() {
  size(600, 600);
 img = loadImage("mosca2.jpg");
 img2 = loadImage("ocell2.jpg");
 img3 = loadImage("canguro.jpg");
 img4 = loadImage("abella.jpg");
 img5 = loadImage("flor.jpg");

    

  //Inicialitzem el número d'objectes(abelles) que hem introduït.

for (int i = 0; i < abelles2.length; i++) {
      abelles2[i] = new abelles();
    }
      //Inicialitzem el número d'objectes(ocells) que hem introduït.

  for(int i=0; i<ocells1.length; i++) {
       ocells2[i] = new ocells(-50,10);
      ocells1[i] = new ocells(-200,30);
       ocells3[i] = new ocells(-400,50);

  }
 
  //Inicialitzem el número d'objectes(mosques) que hem introduït.

  for (int i = 0; i < mosques.length; i++) {
      mosques[i] = new Mover();
    }
      //Inicialitzem el número d'objectes(cangurs) que hem introduït.

     for (int i = 0; i < cangur2.length; i++) {
    cangur2[i] = new cangur(random(0.1,5),0);
  }
}
void draw() {
  background(255);
      image (img5,mouseX, mouseY,50,50);

 
 //Cridem els mètodes per cada dels objectes que seran creats.

  for(int i=0; i<ocells1.length; i++) {
    ocells1[i].ocells2(i);
    ocells2[i].ocells2(i);
    ocells3[i].ocells2(i);


  }
   //Cridem els mètodes per cada dels objectes que seran creats.

for (int i = 0; i < mosques.length; i++) {
      mosques[i].update();
      mosques[i].checkEdges();
      mosques[i].display();
    }
    
  PVector wind = new PVector(0.01,0);
  PVector gravity = new PVector(0,0.1);
 
  //Cridem els mètodes per cada dels objectes que seran creats.

  for (int i = 0; i < cangur2.length; i++) {
    cangur2[i].applyForce(wind);
    cangur2[i].applyForce(gravity);
    cangur2[i].update();
    cangur2[i].display();
    cangur2[i].checkEdges();
  }
    //Cridem els mètodes per cada dels objectes que seran creats.

   for (int i = 0; i < abelles2.length; i++) {
      abelles2[i].update();
      abelles2[i].checkEdges();
      abelles2[i].display();
    }

}
  
     

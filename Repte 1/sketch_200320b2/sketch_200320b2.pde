
//Variables que utilitzerem.
int x=0;
int i=0;
PImage img;
int mida=20;

void setup(){
  //Mide pantalla
  size(600,600);
  
  //Carregem la imatge que volem utilitzar
  img = loadImage("texturaa.JPG");
  
//Bucle el qual ens dibuixa la malla de quadrats, i ens imprimeix cada imatge en un quadrat. 

//En el codi que està desactivat ens pintaria cada quadrat de un color random()

for (int x=0; x<600; x=x+20) {     
   for (int i=0; i<600; i=i+20) { 
     
       //fill(random(255), random(255), random(255), random(255));

      square(x,i,20);
      
      //Mostrem les imatges
      image(img, x,i,20,20);

  } 
  }  

  }

void draw(){
 

}


void setup() {
  size(640,360);
  
}
 
void draw() {
  background(255);
 //Declarem  PVector que son mouse i centre. Mouse per captura posicio x,y i Centre per saber on es el mitg de la pantalla.
  PVector mouse = new PVector(mouseX,mouseY);
  PVector centre = new PVector(width/2,height/2);
  
  // Resta els components x, y i z del vector Centre
  mouse.sub(centre);
 
 //Calcula la magnitud d'un vector. De la posicio centre fins la posicio del mouse.
  float longitud = mouse.mag();
  fill(0);
 //Ens permet començar al mitg de la pantalla.
  translate(width/2,height/2);
  //Mostrem la linia
  line(0,0,mouse.x,mouse.y);
   
   //Mostrem el valor de la magnitud amb la variable (m) que hem creat.
   text(longitud, 20, 20); 
}


  

  

  
  

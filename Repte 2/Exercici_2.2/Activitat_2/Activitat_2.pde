  PVector localitzacio; //Declarem dos variables PVector que son localitzacio i velocitat. Si ho fesim sense vectors tindrioem 4 variables.
  PVector velocitat;
 

   
  void setup() {
    size(640,360); //Mide Pantalla
    localitzacio = new PVector(100,100); //Donem una posicio inicial a la bola.
    velocitat = new PVector(5,5); //Donem la velocitat que volem en x , y.
    
  
  }
   
  void draw() {
    
   
    background(200);//Diem el color que volem de fons.
    stroke(255);//Color de la linia de la bola
    fill(1);//Color de la bola
    ellipse(localitzacio.x,localitzacio.y,50,50); //Fem referencia a la a la variable localitzacio que hem declarat com a Vector.Diem la posicio x, y
  
    localitzacio.add(velocitat);//Afageix el vector velociti a la localitzacio de la bola.
    
    
  //Creem els if els quals fan rebotar la bola quan arriben al limit de la pantalla. Fem referencia a X, Y amb el vector localitzacio.x i localitzacio.y.
  //Tambe modifiquem la velocitat per tal de que la bola no desaparegui del recuadra. La modifiquem amb velocitat.x i velocitat.y.
    if ((localitzacio.x > width) || (localitzacio.x < 0)) {
      velocitat.x = velocitat.x * -1;
    }
    if ((localitzacio.y > height) || (localitzacio.y < 0)) {
      velocitat.y = velocitat.y * -1;
    
    
   
  
  }
  }

void setup() {
  size(600,400);
}


//Vector unitari
//Un vector unitari és un vector que el mantenim apunten en una mateixa direcció i canviem la seva longitud a 1.


void draw() {
  background(134);
//Creem dos vectors, el primer per la posició del mouse i l'altre per saber on es el centre de la pantalla.

  PVector PosicioMouse = new PVector(mouseX,mouseY);
  PVector CentrePantalla = new PVector(width/2,height/2);
 
//Resta els components x, y , z del vector CentrePantalla. Ens permetrà desplaçar-nos per la pantalla amb el mouse
PosicioMouse.sub(CentrePantalla);
  
 
//Normalitzem el vector i ens permet donar-li un valor.
PosicioMouse.normalize();
  
  
//Multipliquem el resultat de la divisió que fa el .normalize que donarà 1 i el multipliquem per el número que vulguem. Per mostrar en pantalla la línia amb la longitud que volem.
PosicioMouse.mult(100);
  
  
//Dividim l'amplada i l'altura de la pantalla entre dos per que  la línia comenci des del mig
translate(width/2,height/2);
  
  
//Dibuixem la línia amb el vector PosicioMouse.x i PosicioMouse.y.
line(0,0,PosicioMouse.x,PosicioMouse.y); 
  
}

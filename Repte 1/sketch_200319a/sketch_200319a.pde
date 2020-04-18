int x=0;

void setup(){
//Diem la mida de la pantalla.
 size(600,600); 

}


void draw(){
 
//Donem color al fons

 background(255, 100, 0);
//Li diem a x que cada  vegada sumi 1

x++;
 
 
//Donem gruix i el color a les línies dels objectes, donem color a l'objecte i per últim creem l'objecte (li diem que és sigui en el mig de la pantalla i es desplaci en l'eix x ).

strokeWeight(10);  
stroke(189,200, 154);
fill (129);
circle(x,width/2, 100);




//Donem gruix i el color a les línies dels objectes(triangle), donem color a l'objecte i per últim creem l'objecte.strokeWeight(10);  
strokeWeight(4);
stroke(129,28, 100);
fill(30, 102, 0);
triangle(30, 75, 58, 20, 86, 75);

//Donem gruix i el color a les línies dels objectes( que es un cuadrat), donem color a l'objecte i per últim creem l'objecte i li diem que segueixi al cursor.

strokeWeight(6);
stroke(189,47, 255);
fill(30, 50,190);
rect(mouseX,mouseY,50,50);






}

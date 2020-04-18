class ocells {
 // Variables utilitzades.
  float x;
  float y;
  color c;
  
  //Creem un metode que li entren dos floats. Diem que x i y son els valors que ens entren.
  ocells(float carx, float cary) {
    x = carx;
    y = cary;
  }
  //Diem que x = a velocitat, si x es mes gran que amplada de la pantalla x torna a ser 0 i mostrem la imatge cada cop que x es 0.
  void ocells2(int velocitat) {
    x = x + velocitat;
    if(x > width) {
      x = 0;
    }
    fill(c);
    image (img2, x, y,50,50);

  }
}

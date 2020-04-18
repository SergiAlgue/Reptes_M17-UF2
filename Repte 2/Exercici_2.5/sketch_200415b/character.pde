  //Clase character que hereda la clase Walker.
  
  class character extends Walker {
    
    //Aquestes son les variables que utilitzen les dues boles. Son color(tres valors), numero de vides, radi de les boles,nom del personatge i la distancia.
     String nomBola;
    String distanciaBola1 = null;
    int[] colors = new int[3];
    int radiMide;
    int numeroVides;
    
   
    
   //Inicilitzem les boles amb un PVector de la posicio inicial, el radi, vides,el nom i el color(tres valors).
  
    character(PVector posInicial, int radi, int vides, String bola,int color1, int color2,int color3) {
      colors[0] = color1;
      colors[1] = color2;
      colors[2] = color3;
  
  
  
      x = (int)posInicial.x;
      y = (int)posInicial.y;
  
  
      numeroVides = vides;
      radiMide = radi;
      nomBola = bola;
      
    }
    
    
    // Dos metodes per sumar i restar les vides. Segons calgui.
    void restarVides() { this.numeroVides--; }
    void sumaVides() { this.numeroVides++; }
    
    
    
    
     //Sobrescritura del metode display() de la clase Walker
  
     
    void display() {
      stroke(0);
      
      //Fem apareixer la bola amb el color la mida i la posicio corresponen a la bola.
      
      fill(colors[0],colors[1],colors[2]);    
      ellipse(x,y,radiMide,radiMide);
    
   
    //En aquesta part mostrem la informacio nom, vides i distancia(en la bola2) corresponen a cada una.
    
     
      fill(0);   
      if(distanciaBola1 != null) {text(distanciaBola1, x-20, y-55);}
      
     
      //Li donem color negre a la informacio que hi ha a sobre de cada bola.
      fill(0);    
     
    
     //vides de cada bola.
      text("Vides: " + numeroVides, x-20, y-45);
  
     
      //Nom de cada bola.
      text(nomBola, x-20, y-35);
      
    
      //Mide del text.
      textSize(10);
  
  
  
    }
    //Agafem valors de la posicio, vides, distancia o nom amb el getters i setters.
  
    int getPosX() {
      return x;
    }
    int getPosY() {
      return y;
    }
    void setPosX(int x_) {
     x = x_;
    }
    void setPosY(int y_) {
     y = y_;
    }
    void setDistanciaBola1(int distancia) {
    if(distancia != 0) {
    distanciaBola1 =distancia + " --Distancia";
       
      }
    }
    void setBola(String nBola) {
    nomBola = nBola;
    }
   
    int getVides() {
    return numeroVides;
    }
    
    
  }

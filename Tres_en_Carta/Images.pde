//declaración del array de imágenes 
PImage[] images;

//Creación de las imágenes
void setImage(){
  this.images = new PImage[33];
  this.images[0] = loadImage("Juegos Jugosos.png");
  this.images[1] = loadImage("Tres en Carta.png");  
  this.images[2] = loadImage("Ficha.png");
  this.images[3] = loadImage("Imán.png");
  this.images[4] = loadImage("Talismán.png");
  this.images[5] = loadImage("Corona.png");
  this.images[6] = loadImage("Espíritu.png");
  this.images[7] = loadImage("Red.png");
  this.images[8] = loadImage("Cáliz Ígneo.png");
  this.images[9] = loadImage("Engranaje.png");
  this.images[10] = loadImage("Hielo.png");
  this.images[11] = loadImage("Pócima.png");
  this.images[12] = loadImage("Prismáticos.png");
  this.images[13] = loadImage("Reloj.png");
  this.images[14] = loadImage("Señal.png");
  this.images[15] = loadImage("Zurrón.png");
  this.images[16] = loadImage("Agujero Negro.png");
  this.images[17] = loadImage("Antifaz.png");
  this.images[18] = loadImage("Escoba.png");
  this.images[19] = loadImage("Escudo.png");
  this.images[20] = loadImage("Espada.png");
  this.images[21] = loadImage("Espejo.png");
  this.images[22] = loadImage("Fuego Cruzado.png");
  this.images[23] = loadImage("Guante.png");
  this.images[24] = loadImage("Lupa.png");
  this.images[25] = loadImage("Malabares.png");
  this.images[26] = loadImage("Reciclaje.png");
  this.images[27] = loadImage("Tornado.png");
  this.images[28] = loadImage("Cetro.png");
  this.images[29] = loadImage("Escudo O.jpg");
  this.images[30] = loadImage("Escudo X.jpg");
  this.images[31] = loadImage("Ficha O.jpg");
  this.images[32] = loadImage("Ficha X.jpg");
}

PImage getImage(int v){
  return this.images[v];
}
  

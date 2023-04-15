//pagina de inicio de sesión
void displayLogIn(){
  
  //establecer color del fondo de pantalla
  color c = color(getColorAt(1)); 
  background(c);
  
  
  //cargar imagenes
  setImage();
  
  //cargar fuentes
  setFonts();
  
  //cargar elementos GUI
  setGUI();
  
  //cargar la lectura de ratón
  mousePressed();
  
  //cargar el uso de teclas
  keyPressed();
    
  //distribución del logo
  image(getImage(0), 25, 25, 350, 350);
  
  //distribución de las imágenes
  image(getImage(2), 600, 25, 200, 200);
  image(getImage(3), 1200, 25, 200, 200);
  image(getImage(4), 1600, 450, 200, 200);
  image(getImage(5), 200, 450, 200, 200);
  image(getImage(6), 400, 800, 200, 200);
  image(getImage(7), 1400, 800, 200, 200);
  
  //distribución del título
  image(getImage(1), 800, 100, 400, 400);
  
  //campo de texto para iniciar sesión
  fill(255);
  rect(735, 475, 525, 350);
  
  //introducción del nombre de usuario
  textAlign(LEFT);
  textFont(getFontAt(1));
  fill(getColorAt(5));
  text("Alias:", 745, 500, 525, 550);
  
  //dibujar el campo de texto
  camposDeTexto[0].display();
  
  //introducción de la contraseña
  textAlign(LEFT);
  textFont(getFontAt(1));
  fill(getColorAt(5));
  text("Contraseña:", 745, 600, 525, 550);
  
  //dibujar el campo de texto
  camposDeTexto[1].display();

//Introducción de la creación de cuenta
  botones[0].setStrokeColor(255);
  botones[0].display();
  
//Introducción del botón iniciar
  botones[1].display();
 
}

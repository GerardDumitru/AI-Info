//pagina de crear cuenta
void displaySignUp(){
  
  //establecer color del fondo de pantalla
  color c = color(getColorAt(1)); 
  background(c);
  
  
  //cargar imagenes
  setImage();
  
  //cargar fuentes
  setFonts();
  
  //cargar elementos GUI
  setGUI();
  
  //distribución del logo
  image(getImage(0), 25, 25, 350, 350);
  
  //distribución de las imágenes
  image(getImage(8), 600, 25, 200, 200);
  image(getImage(9), 1200, 25, 200, 200);
  image(getImage(10), 1600, 450, 200, 200);
  image(getImage(11), 200, 450, 200, 200);
  image(getImage(12), 400, 800, 200, 200);
  image(getImage(13), 1400, 800, 200, 200);
  
  //distribución del título
  image(getImage(1), 800, 100, 400, 400);
  
  //campo de texto para iniciar sesión
  fill(255);
  rect(735, 475, 525, 350);
  
  //introducción del nombre de usuario
  textAlign(LEFT);
  textFont(getFontAt(1));
  fill(getColorAt(5));
  text("Crear Alias:", 745, 500, 525, 550);
  
  //dibujar el campo de texto
  camposDeTexto[0].display();
  
  //introducción de la contraseña
  textAlign(LEFT);
  textFont(getFontAt(1));
  fill(getColorAt(5));
  text("Crear Contraseña:", 745, 600, 525, 550);
  
  //dibujar el campo de texto
  camposDeTexto[1].display();
  
//Introducción del botón crear
  botones[2].display();
 
}

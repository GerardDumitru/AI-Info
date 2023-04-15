//declaración de los diferentes elementos GUI usados
TextField[] camposDeTexto;
Button[] botones;

//Creación de los elementos GUI
void setGUI(){
  crearCamposTexto();
  crearBotones();
}

//Creación de los campos de texto
void crearCamposTexto(){
  this.camposDeTexto = new TextField[2];
  //alias
  camposDeTexto[0] = new TextField(745, 545, 500, 25);
  //contraseña
  camposDeTexto[1] = new TextField(745, 645, 500, 25);
}

//Creación de los botones
void crearBotones(){
  this.botones = new Button[3];
  //crear cuenta
  botones[0] = new Button("Crear Cuenta", 745, 680, 150, 25);
  //iniciar
  botones[1] = new Button("Iniciar", 1150, 765, 100, 45);
  //crear
  botones[2] = new Button("Crear", 1150, 765, 100, 45);
}

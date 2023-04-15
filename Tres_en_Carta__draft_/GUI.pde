//declaración de los diferentes elementos GUI usados
TextField alias, contraseña;
Button crearCuenta, iniciar, crear;

//Creación de los elementos GUI
void setGUI(){
  crearCamposTexto();
  crearBotones();
}

//Creación de los campos de texto
void crearCamposTexto(){
  this.alias = new TextField(745, 545, 500, 25);
  this.contraseña = new TextField(745, 645, 500, 25);
}

//Creación de los botones
void crearBotones(){
  this.crearCuenta = new Button("Crear Cuenta", 745, 680, 150, 25);
  this.iniciar = new Button("Iniciar", 1150, 765, 100, 45);
  this.crear = new Button("Crear", 1150, 765, 100, 45);
}

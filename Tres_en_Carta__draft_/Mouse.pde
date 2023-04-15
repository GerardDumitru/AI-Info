void mousePressed(){
  if(screen == Screen.LogIn){
   alias.isPressed();
   contraseña.isPressed();
  }      
  if(crearCuenta.mouseOverButton()){
    screen = Screen.SignUp;
  }
}

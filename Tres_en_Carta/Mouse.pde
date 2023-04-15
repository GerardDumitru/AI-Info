void mousePressed(){
  if(screen == Screen.LogIn){    
    if(botones[0].mouseOverButton()){
      screen = Screen.SignUp;
    }
  }
  camposDeTexto[0].isPressed();
  camposDeTexto[1].isPressed();
}

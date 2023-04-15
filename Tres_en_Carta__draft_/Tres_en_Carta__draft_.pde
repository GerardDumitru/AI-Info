enum Screen {LogIn, SignUp};
Screen screen = Screen.LogIn;

void setup(){
  
  size(1920, 1080);
  setColors();
  setGUI();
}

void draw(){
  
  switch(screen){
    case LogIn: displayLogIn(); break;
    case SignUp: displaySignUp(); break;
  }
}

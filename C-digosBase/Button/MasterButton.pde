class MasterButton{
  /**
   Empty Contructor for calling methods;
  */
  MasterButton(){}
  
  /**
   Checks if the mouse pos is whitin the button area
   If is return true, else return false;
  */
  boolean isPressed(int x, int y, float width, float height){
    if(mousePressed && mouseX >= x && mouseX <= x + width && mouseY >= y && mouseY <= y + height){
      return true;
    } else {
      return false;
    }
  }
  
  /**
   Get a Button and check if is being pressed with the isPressed() function;
  */
  boolean onClick(Button btn){
    if(btn.isPressed(btn.getX(), btn.getY(), btn.getWidth(), btn.getHeight())){
      return true;
    } else {
      return false;
    }
  }
}
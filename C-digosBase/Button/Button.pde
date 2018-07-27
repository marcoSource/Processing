class Button extends MasterButton{
  
  int posX, posY;
  float w, h;
  
  /**
   Default values for the button style
  */
  String defaultText = "";
  int defaultTextSize = 16;
  color defaultColor = color(100);
  color defaultTextColor = color(255, 255, 255);
  
  /**
   Main contructor
  */
  Button(int x, int y, float _width, float _height){
    posX = x;
    posY = y;
    w = _width;
    h = _height;
  }
  
  /**
   Draw the button in the screen
   ->should be called in the draw function on the main sketch
   
   in the future will be implemented more shapes for the button
  */
  void show(){
    fill(defaultColor);
    rect(posX, posY, w, h);
    fill(defaultTextColor);
    textSize(defaultTextSize);
    text(defaultText, posX + w/2, posY + h/2);
  }
  
  /**
   All the getters and setters for retrieve or change the default values
  */
  int getX(){return posX;}
  int getY(){return posY;}
  void setX(int x){posX = x;}
  void setY(int y){posY = y;}
  float getWidth(){return w;}
  float getHeight(){return h;} 
  void setText(String text){defaultText = text;}
  void setTextColor(color c){defaultTextColor = c;}
  void setTextSize(int size){defaultTextSize = size;}
  void setColor(color c){defaultColor = c;}
}
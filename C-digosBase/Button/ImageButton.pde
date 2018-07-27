class ImageButton extends Button {
 
  PImage img;
  
  int posX, posY;
  
  /**
   This contructor takes an PImage using the original scale
   from the image
  */
  ImageButton(int x, int y, PImage i){
    super(x,y, i.width , i.height);
    img = i;
    posX = x;
    posY = y;
  }
  
  /**
   This contructor takes the a string with the name of the image file
   and sets the size with:
    @param w = width
    @param h = height
  */
  ImageButton(int x, int y, float w, float h, String name){
    super(x,y,w,h);
    img = loadImage(name);
    img.resize((int)w, (int)h); 
    posX = x;
    posY = y;
  }
  
  void display(){
   image(img, posX, posY);
  }
}
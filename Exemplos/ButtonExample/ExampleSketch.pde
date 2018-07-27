/**
 Example to use with the base code
*/

//MasterButton for the detection click
MasterButton master;

//ImageButton with PImage and string
ImageButton downArrow, downArrowString;

//PImage to load the image from the data folder
PImage buttonImg;

//Normal Button and styled
Button button, styled;

void setup(){
  //Initialize all the variables
  master = new MasterButton();
  
  //ImageButton with the PImage
  buttonImg = loadImage("button.png");
  downArrow = new ImageButton(width - buttonImg.width, height - buttonImg.height, buttonImg);
  
  //ImageButton with the filename string
  downArrowString = new ImageButton(20, 20, 50, 50, "button.png");
  
  //Normal button
  button = new Button(20, 80, 50, 50);
  
  //Styled button
  styled = new Button(20, 150, 50, 50);
}

void draw(){
  //clean the background every loop
  background(0);
  
  //draw all the buttons minus the master, because its just a detector
  downArrow.display();
  downArrowString.display();
  button.show();
  styled.show();
  
  //Styling the button
  styled.setColor(color(255, 0, 255));
  styled.setText("hi");
  styled.setTextColor(color(0, 255, 100));
  
  //Giving actions to the button with the master button
  if(master.onClick(downArrow)){
    //change the normal button background color 
    button.setColor(color(0, 0, 255, 100));
  } else if(master.onClick(styled)){
    //change the position
    styled.setText("bye");
  }
}
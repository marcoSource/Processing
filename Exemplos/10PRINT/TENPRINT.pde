/**
 10PRINT examples with processing
 more info in the readme file
 
 
 Bellow is the mainCode
  - change the random probability to different results
 
    stroke(255);
    strokeWeight(10);
    if(random(1) > 0.5){
      line(x, y, x + spacing, y + spacing);
    } else {
      line(x, y + spacing, x + spacing, y);
    }
    x = x + spacing;
    if(x > width){
      x = 0;
      y = y + spacing;
    }
*/

//Values to define the start point
int x = 0;
int y = 0;


//Value added to the start point in each loop
int defaultSpacing = 20;


//Change this to true if, the "classic" type is choose
boolean originalBackground = true;

void setup(){
  //Change the background depending on the originalBackground state
  if(originalBackground){
    background(0, 0, 255);
  } else {
    background(0);
  }
  
  frameRate(60);
}

void draw(){
  
  //drawTenPrint("colorful", defaultSpacing);
  drawTenPrint("classic", defaultSpacing);
  //drawTenPrint("rndFat", defaultSpacing);
  //drawTenPrint("rndSpace", defaultSpacing);
  //drawTenPrint("mostInOn", defaultSpacing);
}

/**
 Function that draw the 10PRINT example depending the type
 
  @param type = The type to draw
  @param spacing = the spacing between each start point
  
  - COLORFUL = Random color is generated every loop and applied to the line
  - CLASSIC = Draws the original 10PRINT example, with the with lines
              and the blue background (change the originalBackground to true)
  - RNDFAT = Random weight is generated and apllied to the stroke
  - RNDSPACE = Random spacing value is added to the defaultValues defined in @param spacing
  - MOSTINONE = All the examples together minus the CLASSIC
*/
void drawTenPrint(String type, int spacing){
  if(type.equals("colorful")){
    color rndColor = color(random(255), random(255), random(255));
    stroke(rndColor);
    strokeWeight(10);
    if(random(1) > 0.5){
      line(x, y, x + spacing, y + spacing);
    } else {
      line(x, y + spacing, x + spacing, y);
    }
    x = x + spacing;
    if(x > width){
      x = 0;
      y = y + spacing;
    }
  } else if(type.equals("classic")){
    stroke(255);
    strokeWeight(10);
    if(random(1) > 0.5){
      line(x, y, x + spacing, y + spacing);
    } else {
      line(x, y + spacing, x + spacing, y);
    }
    x = x + spacing;
    if(x > width){
      x = 0;
      y = y + spacing;
    }
  } else if(type.equals("rndFat")){
    stroke(255);
    strokeWeight(random(0, 15));
    if(random(1) > 0.5){
      line(x, y, x + spacing, y + spacing);
    } else {
      line(x, y + spacing, x + spacing, y);
    }
    x = x + spacing;
    if(x > width){
      x = 0;
      y = y + spacing;
    }
  } else if(type.equals("rndSpace")){
    int rndSpace = int(random(10, 30));
    stroke(255);
    strokeWeight(10);
    if(random(1) > 0.5){
      line(x, y, x + (spacing + rndSpace), y + (spacing + rndSpace));
    } else {
      line(x, y + (spacing + rndSpace), x + (spacing + rndSpace), y);
    }
    x = x + (spacing + rndSpace);
    if(x > width){
      x = 0;
      y = y + (spacing + rndSpace);
    }
  } else if(type.equals("mostInOne")){
    int rndSpace = int(random(10, 30));
    color rndColor = color(random(255), random(255), random(255));
    stroke(rndColor);
    strokeWeight(random(0, 15));
    if(random(1) > 0.5){
      line(x, y, x + (spacing + rndSpace), y + (spacing + rndSpace));
    } else {
      line(x, y + (spacing + rndSpace), x + (spacing + rndSpace), y);
    }
    x = x + (spacing + rndSpace);
    if(x > width){
      x = 0;
      y = y + (spacing + rndSpace);
    }
  }
}
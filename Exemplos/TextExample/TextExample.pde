/**
 Example using some of the features.
 See the readme.md file to see the results
*/

Text noUpdate, update;

void setup(){
  noUpdate = new Text("FPS :" + frameRate, width/2 - 50, height/2 - 50);
  update = new Text(width/2 - 50, height/2 + 100);
}

void draw(){
  background(0);
  
  noUpdate.show(true);
  noUpdate.setTextColor(color(255, 255, 0));
  noUpdate.setTextSize(40);
  noUpdate.setShadowColor(color(0, 255, 0));
  
  update.showAndUpdate("FPS: " + frameRate, true);
  update.setTextSize(40);
  update.setShadowColor(color(255, 0, 0));
}
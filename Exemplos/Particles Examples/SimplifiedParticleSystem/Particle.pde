class Particle {
  PVector pos;
  PVector velocity;
  int a = 255;
  float w = 15;
  
  Particle(float x, float y){
    pos = new PVector(x, y);
  }
  
  void show(){
    color c = color(random(255), random(255), random(255));
    stroke(c, a);
    strokeWeight(w);
    point(pos.x, pos.y);
  }
  
  void update(){
    velocity = new PVector(random(-5, 5), random(-10, -5));
    pos.x += velocity.x;
    pos.y += velocity.y;
    if(a > 0) a -= 5;
    if(w > 0) w -= 0.5;
  }
  
  boolean isDead(){
    if(a <= 0){
      return true;
    } else {
      return false;
    }
  }
}
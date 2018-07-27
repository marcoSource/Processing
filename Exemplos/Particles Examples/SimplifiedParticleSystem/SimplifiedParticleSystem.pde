ArrayList<Particle> particles;

void setup(){
  particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  Particle particle = new Particle(width/2, height - 20);
  particles.add(particle);
  
  for(int i = particles.size() - 1; i >= 0; i--){
    Particle p = particles.get(i);
    p.show();
    p.update();
    if(p.isDead()){
      particles.remove(0);
    }
  }
}

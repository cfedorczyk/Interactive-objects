class Mover {
  PVector loc;
  PVector vel;
  int d;

  Mover() {
    loc = new PVector(random(width), random(height));
    vel = PVector.random2D();
    d = 20;
  }

  void display() {
    ellipse(loc.x, loc.y, d, d);
  }

  void move() {
    loc.add(vel);
    if (loc.x - d/2 > width) {
      loc.x = -d/2;
    }
    if (loc.x + d/2 < 0) {
      loc.x = width + d/2;
    }
    if (loc.y - d/2 > height) {
      loc.y = -d/2;
    }
    if (loc.y + d/2 < 0) {
      loc.y = height + d/2;
    }
  }
  void checkCircle(){
   if(dist(mouseX,mouseY,loc.x,loc.y) < d/2){
    print("I'm not touching you! ");
   } 
  }
}


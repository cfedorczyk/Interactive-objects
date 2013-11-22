class Obstacle {
  PVector loc;
  int d;

  Obstacle(float x, float y, int tempD) {
    loc = new PVector(x, y); 
    d = tempD;
  }

  void display() {
    fill(0, 0, 100);
    ellipse(loc.x, loc.y, d, d);
  }
}


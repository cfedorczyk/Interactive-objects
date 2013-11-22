class Mover {
  PVector loc;
  PVector vel;
  int d;
  int hue;

  Mover() {
    loc = new PVector(random(width), random(height));
    vel = PVector.random2D();
    d = 20;
    hue = 0;
  }

  void display() {
    fill(hue, 100, 100);
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

  boolean checkCircle() {
    if (dist(mouseX, mouseY, loc.x, loc.y) < d/2) {
      return true;
    }
    else {
      return false;
    }
  }
  void colorChange(int step) {
    hue+=step;
    if (hue > 360) {
      hue = 0;
    }
  }

  void newLocation() {
    loc.set(random(width), random(height));
  }

  void checkObstacle(Obstacle o) {
    if (loc.dist(o.loc) < d/2 + o.d/2) {
      newLocation();
    }
  }
}


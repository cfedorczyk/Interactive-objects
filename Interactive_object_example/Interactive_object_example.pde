Mover[] m = new Mover[50];
Obstacle obs;

void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100, 100);
  obs = new Obstacle(width/2,height/2,200);
  for (int i = 0; i < m.length; i++) {
    m[i] = new Mover();
  }
}

void draw() {
  background(0);
  obs.display();
  for (int i = 0; i < m.length; i++) {
    m[i].move();
    m[i].display();
    m[i].checkObstacle(obs);
  }
}


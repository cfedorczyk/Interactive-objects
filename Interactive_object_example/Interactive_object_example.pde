Mover[] m = new Mover[50];

void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i = 0; i < m.length; i++) {
    m[i] = new Mover();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < m.length; i++) {
    m[i].move();
    m[i].display();
    if (m[i].checkCircle()) {    //use checkCircle() to identify if a circle is being touched
      m[i].colorChange(20); 
      m[i].newLocation();
    }
  }
}


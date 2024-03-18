int starSize = 5;
int shipSize = 3;
int numStars = 500;
PImage img;
ArrayList<Particle> stars = new ArrayList<Particle> ();
Random ships = new Random();

void setup() {
  img = loadImage("cute-orange-cat.png");
  noStroke();
  size(500,500);
  background(0);
  for(int i = 0; i < numStars; i++) {
    stars.add(new Particle());
  }
  stars.add(ships);
}

void draw() {
  background(0);
  stars.add(new Particle());
  for(int i = 0; i < stars.size(); i++) {
     stars.get(i).move();
     stars.get(i).show();
  }
}

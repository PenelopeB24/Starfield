class Random extends Particle {
  Random() {
    myX = ((Math.random()*width));
    myY = 250;
    starColor = color(100, 20, 125);
  }

  void move() {
    myX += (Math.random()*2); //speed
    myY += (Math.random()*2)-1; //speed
  }
  
  void show() {
    fill(starColor);
    image(img, (float)myX, (float)myY, 20, 20);
  }
}

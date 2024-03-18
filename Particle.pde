class Particle {
  double myX, myY, myAngle, mySpeed;
  int starColor;
  float r, g, b, a;
  Particle() {
    myX = width/2;
    myY = height/2;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*5;
    r = (float)Math.random()*256;
    g = (float)Math.random()*256;
    b = (float)Math.random()*256;
    //a = 0;
  }

  void move() {
    myX += mySpeed*(Math.cos(myAngle));
    myY += mySpeed*(Math.sin(myAngle));
    //a += mySpeed;
    a = map(pow(((float)myX-width/2), 2)+ pow(((float)myY-height/2), 2), 0, pow((width/2), 2) + pow((height/2), 2), 0, 255);
  }

  void show() {
    fill(r, g, b, a);
    ellipse((float)myX, (float)myY, starSize, starSize);
  }
}

class Ball {
  float x = width/2;
  float y = width/2;
  float xspeed = 1;
  float yspeed = 3;
  //
  void update () {
    x = x + xspeed; 
    y = y + yspeed;
  }
  //
  void reset () {
    x = width/2;
    y = height/2;
  }
  //
  void net () {
    if (y < 0 || y > height) {
      yspeed *= -1;
    }
    if (x > width) {
      reset();
    }
    if (x < 0) {
      reset();
    }
  }
  //
  void show () {
    fill (255);
    ellipse (x, y, 24,24);
  }
}

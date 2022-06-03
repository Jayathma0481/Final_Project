class Ball {
  float x = width/2;
  float y = width/2;
  float xspeed = 1;
  float yspeed = 3;
  float r = 12;
  //
  Ball () {
  }
  //
  void checkPaddle(Paddle p) {
    if (y < p.y + p.h/2 && y > p.y - p.h/2) {
     if (xspeed < 0 && x - r < p.x + p.w/2) {
         xspeed *= -1;
      } else if (x + r > p.x - p.w/2 ){
         xspeed *= -1;
      }
    }
  }
   
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
    ellipse (x, y, r*2, r*2);
  }
}

Ball ball;
//
Paddle left;
Paddle right;
//
void setup () {
  fullScreen();
  ball = new Ball ();
  left = new Paddle(true);
  right = new Paddle (false);
}
void draw () {
background (0);
//
ball.checkPaddle(right);
ball.checkPaddle(left);
//
left.show();
right.show();
left.update();
right.update();
//
ball.update ();
ball.net ();
ball.show ();
}
//
void keyReleased () {
  left.move(0);
  right.move(0);
}

void keyPressed () {
  if  (key == 'a') {
    left.move (-10);
  }
  else if (key == 'z') {
    left.move (10);
  }
  //
  if  (key == 'k') {
    right.move (-10);
  }
  else if (key == 'm') {
    right.move (10);
  }
}

Ball ball;
//
Paddle left;
Paddle right;
//
void setup () {
  size (600,600);
  ball = new Ball ();
  left = new Paddle(true);
  right = new Paddle (false);
}
void draw () {
background (0);
//
left.show();
right.show();
//
ball.update ();
ball.net ();
ball.show ();
}

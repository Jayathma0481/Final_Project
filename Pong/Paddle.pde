class Paddle {
  float x;
  float y = height/2;
  float w = 10;
  float h = 120;

  Paddle (boolean left) {
   if (left) {
     x = w;
   } else {
     x= width - w ;
   }
  }
void show() {
  fill (255);
  rectMode (CENTER);
  rect (x,y,w,h);
}
}

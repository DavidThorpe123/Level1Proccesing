int x = 50;
int y = 50;
int x2 = 5;
int y2 = 5;
int paddleWidth = 50;
int paddleHeight = 200;
int paddleY = mouseY;
float speed = 2;
int ballWidth = 50;
boolean hitborder = false;
void setup() {
size(500, 500);
background(255, 0, 0);

}

void draw() {
  background(255, 0, 0);
  speed += (speed > 0) ? 0.01 : -0.01;
  x += speed;
  fill(0, 0, 0);
  stroke(0, 0, 0);
  ellipse(x, y, ballWidth, ballWidth);
  
 if (x - (ballWidth / 2) < 0) {
 speed = -speed; 
 }
 else if (x + (ballWidth / 2) > width) {
   speed = -speed;
 }
 if (intersects()) {
  System.out.println("Hi"); 
 }
rect (x2, mouseY, paddleWidth, paddleHeight);
System.out.println(mouseY);
System.out.println(y);

  
  
}
boolean intersects() {
if (x2 + paddleWidth > x - ballWidth / 2 && paddleY > ballWidth / 2 && paddleY + paddleHeight < ballWidth / 2 ) {
  return true;
}
  else {
   return false; 
  }

}
  
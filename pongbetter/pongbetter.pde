int x = 50;
int y = 50;
int x2 = 5;
int y2 = 5;
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
  System.out.println(speed);
 if (x - (ballWidth / 2) < 0) {
 speed = -speed; 
 }
 else if (x + (ballWidth / 2) > width) {
   speed = -speed;
 }
rect (x2, mouseY, 50, 200);
boolean intersects(int x, int y, int x2, int y2, int paddleLength) {
if (y > y2 && x > x2 && x < paddleX + paddleLength)
return true;
else 
return false;
}

  
  
}
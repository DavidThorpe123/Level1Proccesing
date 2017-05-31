int x = 10;
int y = 250;
int topHeight = 250;
int pipeWidth = 20;
int gap = 60;
int pipeX = 250;
double birdYVelocity = 0;
double gravity = 0.5;
int random = (int) random(1, 400);
void setup() {
size(500, 500); 
x = width/5;
y= height/2;
}
void draw() {
background(0, 0, 255);
fill(0, 255, 0);
ellipse(x, y, 25, 25);
fill(0, 255, 0);
rect(pipeX,  topHeight + gap, pipeWidth, height);
fill(0, 255, 0);
rect(pipeX, 0, pipeWidth, topHeight);
birdYVelocity+=gravity;
y+=birdYVelocity;
boolean intersected = intersects(x, y, pipeX, topHeight + gap, pipeWidth);
if(intersected) {
  System.exit(0);
}
 intersected = intersectstop(x, y, pipeX, topHeight, pipeWidth);
if(intersected) {
  System.exit(0);
}
if(pipeX == 0) {
random = (int) random(50, 250);
pipeX += 500;
gap = random;
random = (int) random(50, 150);
topHeight = random;

}
pipeX--;
}
void mousePressed() {
  
birdYVelocity =- 3;

  
}

boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}
boolean intersectstop(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY < paddleY + 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}


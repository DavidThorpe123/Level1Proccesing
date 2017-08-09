int x = 50;
int y = 50;
void setup() {
size(400, 400);
background(64, 64, 64);
}
void draw() {
fill(0, 255, 0);
background(64, 64, 64);
ellipse(x, y, 50 , 50);
}
void keyPressed() {
  if (keyCode == UP) {
    y = y - 40;
  }
  if (keyCode == DOWN) {
   y = y + 40;
  }
}

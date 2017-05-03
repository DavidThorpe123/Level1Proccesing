float minx = 0;
float maxX = 5 * 500;
float groundY = 400;
float offsetx = 0;
float offsety = 0;
void setup() {
 size(500, 500); 
  
}

void draw() {
line(minx + offsetx, groundY + offsety, maxX + offsetx, groundY + offsety);
for(float x = minx; x < maxX; x +=50) {
 line(x, groundY - 5, x, groundY + 5); 
  
}
rect(30, 355, 45, 45);
fill(255, 0, 0);
}
void keyPressed() {
 if (keyCode == RIGHT) {
   offsetx++;
 }
}
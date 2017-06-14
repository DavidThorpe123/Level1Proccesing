int y = 480;
void setup() {
 size(500,500);
 background(255, 0, 0);
  
}
void draw() {
  background(255, 0, 0);
 strokeWeight(10);
 line(0, .8 * height, width, .8 * height);
 strokeWeight(1);
 ellipse(.5 * width, y, 50, 50);
  y-=2;
  
}
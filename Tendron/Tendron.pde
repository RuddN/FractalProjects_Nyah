void setup() {
  size(500, 500);  
  background(255);
  noLoop();
}

void draw() {
  background(255);
  Cluster c = new Cluster(50, 250, 250); // initial number of segments in the tendril and starting (x,y) coordinate
}
void mousePressed() {
  redraw();
}


PImage backdrop,foreground;
int dandyH=400;
DandyDust[] flurries;
int flurryCount=7;

void setup() {
  size(960, 720);
  background(255);
  
  //noLoop();
  
  backdrop=loadImage("bckg.jpg");
  foreground=loadImage("frgd.png");
  
  flurries=new DandyDust[flurryCount];
  for(int i=0;i<flurryCount;i++){
    flurries[i]=new DandyDust();
  }
}

void draw() {
  background(10);
  image(backdrop,0,0);
  image(foreground,0,290);
  noStroke();
  fill(255, 251, 219);
  ellipse(775,225,120,120);
  
  for(DandyDust flurry:flurries){
    flurry.show();
    flurry.move();
  }
  
  stroke(0);
  strokeWeight(8);
  line(250, height-dandyH, 250, height);
  Cluster c = new Cluster(50, 250, height-dandyH);
}

void mousePressed() {
  
}

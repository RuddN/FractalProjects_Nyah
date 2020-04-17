class Tendril {
  public final static int seg = 2;
  private int numSegs, x, y, stroke;
  private double angle;
  int limit;

  public Tendril(int len, double theta, int xt, int yt) {
    numSegs=len;
    angle=theta;
    x=xt;
    y=yt;
    stroke=len/10;
    limit=12;
  }
  public void grow() {
    int startX=x;
    int startY=y;
    strokeWeight(stroke);
    //stroke(255);
    //stroke(0-(numSegs*0),255-(numSegs*4),255-(numSegs));
    for(int i=0;i<numSegs;i++){
      angle+=((double)(random(4)/10))-0.2;
      int endX=startX+(int)(Math.cos(angle)*seg);
      int endY=startY+(int)(Math.sin(angle)*seg);
      line(startX,startY,endX,endY);
      startX=endX;
      startY=endY;
    }
    if (stroke>=2) {
      stroke--;
    }
    if(numSegs>=limit){
      Cluster clu=new Cluster(numSegs/2,startX,startY);
    }
  }
  
  public void show() {
    int startX=x;
    int startY=y;
    strokeWeight(stroke);
    //stroke(255);
    //stroke(0-(numSegs*0),255-(numSegs*4),255-(numSegs));
    for(int i=0;i<numSegs;i++){
      angle+=((double)(random(4)/10))-0.2;
      int endX=startX+(int)(Math.cos(angle)*seg);
      int endY=startY+(int)(Math.sin(angle)*seg);
      line(startX,startY,endX,endY);
      startX=endX;
      startY=endY;
    }
  }
  
  void setLimit(int i){
    limit=i;
  }
}

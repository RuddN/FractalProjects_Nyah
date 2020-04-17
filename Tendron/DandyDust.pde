class DandyDust {

  int x, y, yinitial, rand, speed, yspeed;
  int ddH;

  DandyDust() {
    rand=(int)random(6);
    //x=10;
    //yinitial=10;
    x=((int)random(100))-120;
    yinitial=((int)random(600))+40;
    y=yinitial;
    speed=((int)random(4))+2;
    yspeed=((int)random(6));
    ddH=((int)random(10))+20;
  }

  void show() {
    stroke(0);
    strokeWeight(3);
    line(x, y, x, y+ddH);
    Poof p = new Poof(12, x, y);
  }

  void move() {
    x+=speed;
    y+=yspeed;
    if (y>yinitial+50||y<yinitial-50) {
      yspeed*=-1;
    }
    if (x>=1000) {
      rand=(int)random(6);
      x=((int)random(600))-620;
      yinitial=((int)random(640))+40;
      y=yinitial;
      speed=((int)random(4))+2;
      yspeed=((int)random(6));
      ddH=((int)random(10))+10;
    }
  }
}

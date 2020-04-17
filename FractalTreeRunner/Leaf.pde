class Leaf {

  int x, y, yinitial, rand, speed, yspeed;

  Leaf() {
    rand=(int)random(6);
    x=((int)random(600))-620;
    yinitial=((int)random(400))+40;
    y=yinitial;
    speed=((int)random(4))+2;
    yspeed=((int)random(6));
  }

  void show() {
    
    if (rand==1) {
      image(l1, x, y);
    } else if (rand==2) {
      image(l2, x, y);
    } else if (rand==3) {
      image(l3, x, y);
    } else if (rand==4) {
      image(l4, x, y);
    } else if (rand==5) {
      image(l5, x, y);
    } else {
      image(l6, x, y);
    }
  }

  void move() {
    x+=speed;
    y+=yspeed;
    if (y>yinitial+50||y<yinitial-50) {
      yspeed*=-1;
    }
    if (x>=680) {
      rand=(int)random(6);
      x=((int)random(100))-120;
      yinitial=((int)random(400))+40;
      y=yinitial;
      speed=((int)random(6))+3;
      yspeed=((int)random(6));
    }
  }

  int getX() {
    return x;
  }

  int getY() {
    return y;
  }
}

class FractalTree {
  int x, y, h, s;
  float angle1, angle2, initial1, initial2;
  float spd,swaylim;

  FractalTree(int xt, int yt, int trunkH, int trunkS, float anglet) {
    x=xt;
    y=yt;
    h=trunkH;
    s=trunkS;
    initial1=anglet;
    initial2=anglet*-1;
    angle1=initial1;
    angle2=initial2;
    spd=0.0005;
    swaylim=0.03;
  }

  void drawTree() {
    translate(x, y);
    drawBranch(h, s);
  }

  void drawBranch(int bLength, int stroke) {
    strokeWeight(stroke);
    //stroke(0-(bLength*0),255-(bLength*4),255-(bLength));
    line(0, 0, 0, -1*bLength);
    translate(0, -1*bLength);
    if (stroke>=2) {
      stroke--;
    }
    if (bLength>lengthMin) {
      push();
      rotate(angle1);
      drawBranch((int)(bLength*branchRatio), stroke);
      pop();
      push();
      rotate(angle2);
      drawBranch((int)(bLength*branchRatio), stroke);
      pop();
    }
  }
  
  void sway(){
    angle1+=spd;
    angle2+=spd;
    //System.out.println(angle1);
    if(angle1>initial1+swaylim||angle1<initial1||angle2>initial2+swaylim||angle2<initial2){
      spd*=-1;
    }
  }
}

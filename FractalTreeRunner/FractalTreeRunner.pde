import java.io.File;
import static java.lang.System.*;
import java.util.List;
import java.util.Arrays;

double branchRatio=0.8;
int lengthMin=5;
int leafs=8;
PImage backdrop,foreground;
PImage l1,l2,l3,l4,l5,l6;
List<FractalTree> forest;
Leaf[] leaves;

void setup() {
  size(640, 480);

  backdrop=loadImage("bckg.jpg");
  foreground=loadImage("frgd.png");
  
  l1=loadImage("lv1.png");
  l2=loadImage("lv2.png");
  l3=loadImage("lv3.png");
  l4=loadImage("lv4.png");
  l5=loadImage("lv5.png");
  l6=loadImage("lv6.png");
  
  forest=new ArrayList<FractalTree>();
  forest.add(new FractalTree(100,height-20, 75, 10, 0.4));

  leaves=new Leaf[leafs];
  for(int i=0;i<leafs;i++){
    leaves[i]=new Leaf();
  }
}

void draw() {
  background(10);
  image(backdrop,0,0);
  image(foreground,0,204);
  noStroke();
  fill(255, 251, 219);
  ellipse(400,100,90,90);
  stroke(0);
  for(Leaf leaf:leaves){
    leaf.show();
    leaf.move();
  }
  for(FractalTree tree:forest){
    tree.drawTree();
    tree.sway();
  }
}

/*void mouseClicked(){
  forest.add(new FractalTree(mouseX,height-20, 75, 10, 0.4));
}*/

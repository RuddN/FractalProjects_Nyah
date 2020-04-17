public class Cluster {
  public final static int numStems = 10;
  Tendril[] tens;

  public Cluster(int len, int x, int y) {
    tens=new Tendril[numStems];
    for (int i=0; i<numStems; i++) {
      tens[i]=new Tendril(len, ((2*PI)/numStems)*i, x, y);
    }
    for (Tendril ten : tens) {
      ten.setLimit(15);
      ten.grow();
    }
  }
}

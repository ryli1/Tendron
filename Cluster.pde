public class Cluster {
  protected float x, y;
  protected int numSeg, segLength;
  public final static int NUM_STEMS = 7;
  public Cluster(float x, float y, int numSeg, int segLength) {
    this.x = x;
    this.y = y;
    this.numSeg = numSeg;
    this.segLength = segLength;
    for(int i = 0; i < NUM_STEMS; i++) {
      Tendril t = new Tendril(x, y, numSeg, segLength);
      t.show();
    }
  }
}

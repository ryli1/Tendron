public class Tendril {
  protected float x, y, myAngle;
  protected int numSeg, segLength;
  public Tendril(float x, float y, int numSeg, int segLength) {
    myAngle = (float)(Math.random()*(2*PI));
    this.segLength = segLength;
    this.x = x;
    this.y = y;
    this.numSeg = numSeg;
  }
  
  public void show() {
    for(int i = 0; i < numSeg; i++) {
      myAngle += (float)(Math.random()*0.4)-0.2;
      float x2 = x + (float)(Math.cos(myAngle) * segLength);
      float y2 = y + (float)(Math.sin(myAngle) * segLength);
      line(x, y, x2, y2);
      x = x2;
      y = y2;
    }
     Cluster c = new Cluster(x, y, numSeg/2, segLength-2);

  }
}

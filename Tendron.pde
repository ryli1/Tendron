//fix stackoverflow

public int segLength = 50;
public int numClicked = 0;

public void setup() {
  size(800, 800);
  background(#003E0A);
  noLoop();
}

public void draw() {
  //(starting x, starting y, number of segments per tendril, segment lengths)
  Cluster c = new Cluster(width/2, height/2, segLength - (numClicked/2), 5);
  if (numClicked == 50) {
    background(#003E0A);
    numClicked = 0;
  }
}

public void mousePressed() {
  numClicked++;
  redraw();
}

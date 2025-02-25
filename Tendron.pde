
public int segLength = 50;
public int numClicked = 0;

public void setup() {
  size(800, 800);
  frameRate(5);
  background(#003E0A);
}

public void draw() {
  //(starting x, starting y, number of segments per tendril, segment lengths)
  Cluster c = new Cluster(width/2, height/2, segLength - (numClicked/2), 5);
  if (numClicked == 100) {
    background(#003E0A);
    numClicked = 0;
  }
  numClicked++;
}

public void mousePressed() {
  background(#003E0A);
}

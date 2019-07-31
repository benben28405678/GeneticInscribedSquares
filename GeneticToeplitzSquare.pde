/*
GeneticToeplitzSquare

A project initiated by Ben Myers on 7/30/19

Available on GitHub (remote: square)
https://github.com/benben28405678/GeneticInscribedSquares
*/

// Sets up some initial values.
public void settings() {
  // Prevent anti-aliasing on rendered pixels.
  noSmooth();
  // Set the initial size to 1000x600 pixels.
  size(1000, 600);
}

// Runs once on the first frame.
public void setup() {
  // Set the target frame rate to 60fps.
  frameRate(60);
}

public Stage activeStage = new Stage(StageType.DRAW_CURVE_START);

// Runs each frame.
public void draw() {
  // Fills the background with a white color.
  background(255, 255, 255, 255);
}

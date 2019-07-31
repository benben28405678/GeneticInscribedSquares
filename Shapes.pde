/*
Quadrilateral is a class that represents a 4-sided shape formed by 4 Vector2s.

Initiated by Ben Myers on 7/30/19.
*/
public class Quadrilateral
{
  // The points of the quad, represented as vectors.
  public PVector v1;
  public PVector v2;
  public PVector v3;
  public PVector v4;
  
  // This initalizer should only be used if the Polygon4 is confirmed to be a quadrilateral, that is, edges don't cross over one another.
  public Quadrilateral(PVector v1, PVector v2, PVector v3, PVector v4) {
    this.v1 = v1;
    this.v2 = v2;
    this.v3 = v3;
    this.v4 = v4;
  }
  
  // Draw the quadrilateral.
  public void draw() {
    quad(v1.x, v1.y, v2.x, v2.y, v3.x, v3.y, v4.x, v4.y);
  }
  
  // Generate a square report for this quad.
  public SquareReport squareness() {
    return new SquareReport(this);
  }
  
  // Test whether this quad equals another quad, where the order of the points matter.
  public boolean strictEquals(Quadrilateral quad) {
    return v1 == quad.v1 && v2 == quad.v2 && v3 == quad.v3 && v4 == quad.v4;
  }
  
  // Test whether this quad equals another quad, where the order of the points do not matter.
  public boolean independentEquals(Quadrilateral quad) {
    if(v1 == quad.v1 && v2 == quad.v2 && v3 == quad.v3 && v4 == quad.v4) {
      return true;
    }
    
    if(v1 == quad.v2 && v2 == quad.v3 && v3 == quad.v4 && v4 == quad.v1) {
      return true;
    }
    
    if(v1 == quad.v3 && v2 == quad.v4 && v3 == quad.v1 && v4 == quad.v2) {
      return true;
    }
    
    if(v1 == quad.v4 && v2 == quad.v1 && v3 == quad.v2 && v4 == quad.v3) {
      return true;
    }
    
    return false;
  }
}

/*
Square is a class that represents a 4-sided square formed by 4 Vector2s.

Initiated by Ben Myers on 7/30/19.
*/
public class Square extends Quadrilateral
{
  // The side lengths of the square.
  public float sideLength;
  
  public Square(Quadrilateral quad) {
    super(quad.v1, quad.v2, quad.v3, quad.v4);
    
    // Because this quad is a square
    sideLength = quad.v1.dist(quad.v2);
  }
}

/*
A short report of the different square-like properties of a quadrilateral.

Initiated by Ben Myers on 7/31/19.
*/
class SquareReport
{
  public float averageDistanceOffset;
  public float largestDistanceOffset;
  public float smallestDistanceOffset;
  
  public SquareReport(Quadrilateral quad) {
    PVector v1 = quad.v1;
    PVector v2 = quad.v2;
    PVector v3 = quad.v3;
    PVector v4 = quad.v4;
    
    // The lengths of the sides of the quad.
    float[] dists = {
      v1.dist(v2),
      v2.dist(v3),
      v3.dist(v4),
      v4.dist(v1)
    };
    
    // The average side length of the quad.
    float avgDist = Math.average(dists);
    
    // The differences between each side length and the average side length of the quad.
    float[] diffs = new float[4];
    for(int i = 0; i < diffs.length; i++) {
      diffs[i] = dists[i] - avgDist;
    }
    
    // Set the information about the square.
    averageDistanceOffset = Math.average(diffs);
    largestDistanceOffset = max(diffs);
    smallestDistanceOffset = min(diffs);
  }
  
  // Returns true if the quad is a square.
  public boolean isSquare() {
    return averageDistanceOffset == 0;
  }
  
  // Returns a formatted output for the square report.
  public String toString() {
    if(isSquare()) {
      return "This quadrilateral is a square.";
    } else {
      return "This quadrilateral is not a square, and it has an average distance offset of " + averageDistanceOffset + ".";
    }
  }
}

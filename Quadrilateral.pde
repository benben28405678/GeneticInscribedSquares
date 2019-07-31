/*
Polygon4 is a class that represents a 4-pointed shape formed by 4 Vector2s. Can cross over itself.

Initiated by Ben Myers on 7/30/19.
*/
public class Polygon4
{
  // 4 vectors, each representing one point on the quad.
  public PVector v1;
  public PVector v2;
  public PVector v3;
  public PVector v4;
  
  public Quadrilateral quad;
  
  // This intializer sets all of the points to whatever the user specifies.
  public Polygon4(PVector v1, PVector v2, PVector v3, PVector v4) {
    this.v1 = v1;
    this.v2 = v2;
    this.v3 = v3;
    this.v4 = v4;
  }
  
  public boolean isQuadrilateral() {
    
  }
}

/*
Quadrilateral is a class that represents a 4-sided shape formed by 4 Vector2s.

Initiated by Ben Myers on 7/30/19.
*/
public class Quadrilateral extends Polygon4
{
  // This initalizer should only be used if the Polygon4 is confirmed to be a quadrilateral, that is, edges don't cross over one another.
  public Quadrilateral(PVector v1, PVector v2, PVector v3, PVector v4) {
    super(v1, v2, v3, v4);
  }
  
  // Draw the quadrilateral.
  public void draw() {
    quad(v1.x, v1.y, v2.x, v2.y, v3.x, v3.y, v4.x, v4.y);
  }
  
  public SquareReport squareness() {
    float[] dists = {
      v1.dist(v2),
      v2.dist(v3),
      v3.dist(v4),
      v4.dist(v1)
    };
    
    float avgDist = Math.average(dists);
    
    float[] diffs = new float[4];
    for(int i = 0; i < diffs.length; i++) {
      diffs[i] = dists[i] - avgDist;
    }
    
    return new SquareReport(diffs);
  }
}

/*
Square is a class that represents a 4-sided square formed by 4 Vector2s.

Initiated by Ben Myers on 7/30/19.
*/
public class Square extends Quadrilateral
{
  public float sideLength;
  
  public Square(PVector v1, PVector v2, PVector v3, PVector v4) {
    super(v1, v2, v3, v4);
    
    sideLength = v1.dist(v2);
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
  
  public SquareReport(float[] sideLengthDifferencesFromAverage) {
    averageDistanceOffset = Math.average(sideLengthDifferencesFromAverage);
    largestDistanceOffset = max(sideLengthDifferencesFromAverage);
    smallestDistanceOffset = min(sideLengthDifferencesFromAverage);
  }
}

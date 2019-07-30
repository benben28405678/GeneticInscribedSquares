/*
Vector2 is a class that represents a 2-dimensional vector.

Initiated by Ben Myers on 7/30/19.
*/

public class Vector2
{
  public float x;
  public float y;
  
  Vector2(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  public String toString() {
    return "(" + x + ", " + y + ")";
  }
}

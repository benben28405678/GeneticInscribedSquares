/*
Math is a class that performs certain mathematical computations.

Initiated by Ben Myers on 7/31/19.
*/
public static class Math
{
  // Returns the average of an array.
  public static float average(float[] list) {
    float count = 0;
    for(float i : list) count += i;
    return count / list.length;
  }
}

public static class Math
{
  public static float average(float[] list) {
    float count = 0;
    for(float i : list) count += i;
    return count / list.length;
  }
}

/*
Stage is a class that represents a different option set for the user.

Initiated by Ben Myers on 7/31/19.
*/
public class Stage
{
  public StageType stage;
  public String title;
  public String desc;
  
  public Stage(StageType type) {
    stage = type;
    
    switch(type) {
      case DRAW_CURVE_START:
      title = "Draw a curve";
      desc = "Click the mouse button down to begin drawing a curve.";
      case DRAW_CURVE_DURING:
      title = "Draw a curve";
      desc = "Once finished, releas the mouse button to complete the curve.";
    }
  }
}

public enum StageType {
  DRAW_CURVE_START,
  DRAW_CURVE_DURING
};

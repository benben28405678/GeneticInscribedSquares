/*
Stage is a class that represents a different option set for the user.

Initiated by Ben Myers on 7/31/19.
*/
public class Stage
{
  public StageType stage;
  public String title;
  public String userInstructions;
  
  public Stage(StageType type) {
    
  }
}

public enum StageType {
  DRAW_CURVE
};

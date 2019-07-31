/*
Canvas is a class that manages GUI.

Initiated by Ben Myers on 7/31/19.
*/
public class Canvas
{
  private ArrayList<CanvasComponent> components = new ArrayList<CanvasComponent>();
  
  public void register(CanvasComponent component) {
    components.add(component);
  }
  
  public void draw() {
    for(CanvasComponent c: components) {
      c.draw();
    }
  }
}

/*
SnapType is a class that represents a different alignment option for CanvasComponents.

Initiated by Ben Myers on 7/31/19.
*/
public enum SnapType {
  CENTER,
  TOP,
  BOTTOM
}

/*
CanvasComponent is an interface that defines a GUI class.

Initiated by Ben Myers on 7/31/19.
*/
public abstract class CanvasComponent
{
  public float x;
  public float y;
  public SnapType snap;
  
  public abstract void draw();
}

/*
Button is a class that allows a user to click for input.

Initiated by Ben Myers on 7/31/19.
*/
public class Button extends CanvasComponent
{
  
}

/*
Text is a class that allows a user to see text.

Initiated by Ben Myers on 7/31/19.
*/
public class Text extends CanvasComponent
{
  
}

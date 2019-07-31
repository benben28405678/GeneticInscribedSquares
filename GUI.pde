/*
Math is a class that performs certain mathematical computations.

Initiated by Ben Myers on 7/31/19.
*/
public class Button
{
  public float x;
  public float y;
  public float w;
  public float h;
  
  public Button(PVector pos, float w, float h) {
    x = pos.x;
    y = pos.y;
    this.w = w;
    this.h = h;
  }
  
  // The delegate function for when the mouse is released while in the button.
  public void mouseReleasedDelegate() {
    if(!mouseInside()) return;
  }
  
  // The delegate function for when the mouse is pressed while in the button.
  public void mousePressedDelegate() {
    if(!mouseInside()) return;
  }
  
  // The delegate function for when the mouse is pressed down while in the button.
  public void mouseDownDelegate() {
    if(!mouseInside()) return;
  }
  
  // Returns true if the mouse pointer is inside the button and it is clicked.
  public boolean isPressed() {
    return mouseInside() && mousePressed;
  }
  
  // Returns true if the mouse pointer is inside the button.
  public boolean mouseInside() {
    return mouseX < x + w/2 && mouseX > x - w/2 && mouseY > y - h/2 && mouseY < y + h/2;
  }
}

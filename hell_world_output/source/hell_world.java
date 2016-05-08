import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class hell_world extends PApplet {

public void setup()
{
   
  textSize(50);
}

public void draw()
{
  teXt("Hell world", 20, 130); //Oops, typo in 'text'!
}
  public void settings() {  size(320,200); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "hell_world" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

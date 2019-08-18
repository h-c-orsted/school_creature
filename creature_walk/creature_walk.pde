void setup() {
  // Define canvas to 800x800 pixels
  size(800, 800);
}


void draw() {  
  // Create body of ellipses. 
  // Define colors and remove stroke to make "one" body 
  fill(51, 102, 153);
  noStroke();
  ellipse(50, 50, 60, 80);
  ellipse(100, 60, 90, 60);
  ellipse(60, 100, 100, 90);
  
  // Add fill and color for eyes
  fill(255, 255, 255);
  stroke(0, 0, 0);
  circle(50, 60, 20);
  circle(95, 70, 20);
  
  arc(60, 100, 50, 20, 0, PI+QUARTER_PI, CHORD);
 
 
  // Make pupils black
  fill(0,0,0);
  circle(55, 64, 10);
  circle(100, 74, 10);
   
}

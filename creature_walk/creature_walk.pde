// Variable to determine whether the creature shall be moved horizontally or vertically. Used to create the "stairs effect". 
boolean horizontal = false;

// Variables to hold placement and scale
int x = 10;
int y = 10;
int counter = 0;


void setup() {
  // Define canvas to 800x800 pixels
  size(800, 800);
}


void draw() {  
  // Add to x or y depending on the bool
  if (horizontal) {
    x += 2;
    counter++;
  } else {
    y += 2;
    counter++;
  }
  
  // Switch between x and y when 10 has been added to x or y and reset counter
  if (counter > 10) {
    horizontal = !horizontal;
    counter = 0;
  }
  
  
  // Clear canvas
  clear();
  
  // Create body of ellipses. 
  // Define color and remove stroke to make "one" body 
  fill(51, 102, 153);
  noStroke();
  ellipse(50+x, 50+y, 70, 100);
  ellipse(100+x, 60+y, 110, 70);
  ellipse(60+x, 100+y, 120, 110);
  
  
  // Add fill and color for eyes
  fill(255, 255, 255);
  stroke(0, 0, 0);
  circle(50+x, 60+y, 20);
  circle(95+x, 70+y, 20);
  
  // Mouth is created with an arc
  arc(60+x, 100+y, 50, 20, 0, PI+QUARTER_PI, CHORD);
 
 
  // Make pupils black
  fill(0,0,0);
  circle(55+x, 64+y, 10);
  circle(100+x, 74+y, 10);
   
}

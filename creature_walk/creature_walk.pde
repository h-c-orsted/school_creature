
// One array to hold all values of all creatures (max count of creatures is right now 100)
float [][] creatures = new float[100][10];
int countCreatures = 0;

// Variables to keep track of what index the different values have in the array
int ballX=0, ballY=1, speedX=2, speedY=3, leftEyeRelativeX=4, leftEyeRelativeY=5, rightEyeRelativeX=6, rightEyeRelativeY=7, ballSize=8, eyeSize=9; 

float zoomFactor = 1.003;


// Function to create x count of creatures depending on parameter
void createCreatures(int count) {
  // Generate a new creature and insert into array
  for (int i=0; i<count; i++) {
    println(countCreatures);
    println(creatures[0]);
    
    creatures[countCreatures][ballX] = round(random(50, 950));
    creatures[countCreatures][ballY] = round(random(50, 950));
    creatures[countCreatures][speedX] = round(random(-3, 3));
    creatures[countCreatures][speedY] = round(random(-3, 3));
    
    // Static values which can be randomized upon desire
    creatures[countCreatures][leftEyeRelativeX] = 5;
    creatures[countCreatures][leftEyeRelativeY] = 5;
    creatures[countCreatures][rightEyeRelativeX] = 20;
    creatures[countCreatures][rightEyeRelativeY] = 5;
    creatures[countCreatures][ballSize] = 50;
    creatures[countCreatures][eyeSize] = 8;
    
    countCreatures++;
  }
}



void setup() {
  // Define canvas size
  size(1000, 1000);
  
  // Start by generating 5 creatures
  createCreatures(5);
}



void draw() {  
  
  clear();
  
  for (int i=0; i<countCreatures; i++) {
    float ballwalk = sin(creatures[i][0]*0.5)*10;
    creatures[i][ballX] += creatures[i][speedX]; 
    creatures[i][ballY] += creatures[i][speedY] + ballwalk; 
    creatures[i][ballSize] *= zoomFactor;
    creatures[i][eyeSize] *= zoomFactor;
    creatures[i][leftEyeRelativeX] *= zoomFactor;
    creatures[i][leftEyeRelativeY] *= zoomFactor;
    creatures[i][rightEyeRelativeX] *= zoomFactor;
    creatures[i][rightEyeRelativeY] *= zoomFactor;
    
    ellipse(creatures[i][ballX], creatures[i][ballY], creatures[i][ballSize], creatures[i][ballSize]);
    ellipse(creatures[i][leftEyeRelativeX] + creatures[i][ballX], creatures[i][leftEyeRelativeY] + creatures[i][ballY], creatures[i][eyeSize], creatures[i][eyeSize]);
    ellipse(creatures[i][rightEyeRelativeX] + creatures[i][ballX], creatures[i][rightEyeRelativeY] + creatures[i][ballY], creatures[i][eyeSize], creatures[i][eyeSize]);
  }
}


void mousePressed() {
  createCreatures(1);
}

int xSize = 800;
int ySize = 600;
int status = 0;

void setup() {
    size(800, 600);
    cleanScreen();
}

void randomColor() {
    fill(random(0, 255), random(0, 255), random(0, 255));
}

float randomSize() {
    return random(20, 80);
}

void drawCircle() {
    float diameter = randomSize();
    randomColor();
    ellipse(random(0, xSize), random(0, ySize), diameter, diameter);
}

void drawSquare() {
    randomColor();
    rect(random(0, xSize), random(0, ySize), randomSize(), randomSize());
}

void cleanScreen() {
    background(random(0, 255), random(0, 255), random(0, 255));
}

void draw() {}


void keyPressed() {
  cleanScreen(); 
  XML xml = loadXML("index.html");
  XML[] elements = xml.getChildren("body")[0].getChildren();

  for (int i = 0; i < elements.length; i++) {
    if (elements[i].getName().equals("circle")) {
      drawCircle();
    }
    else if (elements[i].getName().equals("square")) {
      drawSquare();
    }
  }
}
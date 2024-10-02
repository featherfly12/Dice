int totalSum = 0; 

void setup() {
  size(1000, 1000);
  noLoop();
}

void draw() {
  background(255, random(100,255), 255);
  totalSum = 0; 
  for (int y = 50; y < 900; y = y + 60) {
    for (int x = 50; x < 900; x = x + 60) {
      Die bob = new Die(x, y);
      bob.show();
      totalSum += bob.rolled; 
    }
  }

  fill(0);
  textSize(20);
  text("Total Sum: " + totalSum, 50, 970); 
}

void mousePressed() {
  redraw();
}

class Die {
  int rolled, myX, myY;

  Die(int x, int y) {
    roll();
    myX = x;
    myY = y;
  }

  void roll() {
    rolled = (int)(Math.random() * 6) + 1;
  }

  void show() {
    noStroke();
    fill(random(100, 255), random(100, 255), 255);
    rect(myX, myY, 50, 50);
    fill(0);
    textSize(30);

    if (rolled == 1) {
      ellipse(myX + 25, myY + 25, 10, 10);
    } else if (rolled == 2) {
      ellipse(myX + 15, myY + 25, 10, 10);
      ellipse(myX + 35, myY + 25, 10, 10);
    } else if (rolled == 3) {
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
    } else if (rolled == 4) {
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
    } else if (rolled == 5) {
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
    } else {
      ellipse(myX + 15, myY + 10, 10, 10);
      ellipse(myX + 35, myY + 25, 10, 10);
      ellipse(myX + 35, myY + 10, 10, 10);
      ellipse(myX + 15, myY + 25, 10, 10);
      ellipse(myX + 35, myY + 40, 10, 10);
      ellipse(myX + 15, myY + 40, 10, 10);
    }
  }
}

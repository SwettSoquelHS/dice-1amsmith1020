Die Die1;
Die Die2;
Die Die3;
Die Die4;
Die Die5;
Die Die6;
Die Die7;
Die Die8;
Die Die9;


void setup() {
  size(500, 500);

  //no loop means that draw is only called once
  //OR if you ever call redraw()
  noLoop();
}

void draw() {
  background(55);
  
  Die1 = new Die(-20, -20);
  Die1.show();
  
  Die2 = new Die(150,-20);
  Die2.show();
  
  Die3 = new Die(320,-20);
  Die3.show();
  
  Die4 = new Die(-20, 150);
  Die4.show();
  
  Die5 = new Die(150,150);
  Die5.show();
  
  Die6 = new Die(320,150);
  Die6.show();
}

void mousePressed() {
  //No real work for you to do here
  //calling redraw will do the necessary work 
  //to redraw your processing script
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
  //variable declarations for your Die instances here
  int x_pos, y_pos;
  //constructor
  Die(int x, int y) {
    x_pos = x;
    y_pos = y;
    //variable initializations here
  }

  //Simulate a roll of a die
  void roll() {
    //your code here, 
    //should randomly assign a value from 1 to 6
  }

  /*
	  Use the randomly assigned roll value to draw the face of a die
   	*/
  void show() {
    fill(255);
    pushMatrix();
    translate(x_pos, y_pos);
    boolean one = true;
    //First row
    rect(50, 50, 80, 80, 7);
    if (one) {
      fill(0);
      ellipse(90,90, 10, 10);
    }
    popMatrix();
    //rect(200,50,80,80,7);
    //rect(350,50,80,80,7);

    //Second row
    //rect(50,200,80,80,7);
    //rect(200,200,80,80,7);
    //rect(350,200,80,80,7);

    //Third row
    //rect(50,350,80,80,7);
    //rect(200,350,80,80,7);
    //rect(350,350,80,80,7);
  }
}

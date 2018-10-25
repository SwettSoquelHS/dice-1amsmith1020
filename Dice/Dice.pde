//Declaring the 9 die needed for this project
Die Die1;
Die Die2;
Die Die3;
Die Die4;
Die Die5;
Die Die6;
Die Die7;
Die Die8;
Die Die9;
int counter;

void setup() {
  size(500, 500);

  //no loop means that draw is only called once
  //OR if you ever call redraw()
  noLoop();
}

void draw() {
  background(55);
  //Die locations on screen
  
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
  
  Die7 = new Die(-20, 320);
  Die7.show();
  
  Die8 = new Die(150,320);
  Die8.show();
  
  Die9 = new Die(320,320);
  Die9.show();
  fill(255);
  text("total dots: " + counter, 50, 475);
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
  int randSide;
  
  //constructor
  Die(int x, int y) {
    x_pos = x;
    y_pos = y;
    fill(255);
    pushMatrix();
    translate(x_pos, y_pos);
    rect(50, 50, 80, 80, 7);
    //variable initializations here
  }

  //Simulate a roll of a die
  void roll() {
      randSide = (int)(Math.random() * 6) + 1;
    //your code here, 
    //should randomly assign a value from 1 to 6
  }

  /*
	  Use the randomly assigned roll value to draw the face of a die
   	*/
  void show() {
    roll();
    if (randSide == 1) {
      fill(0);
      ellipse(90,90,10,10);
      counter = counter + 1;
    } else if(randSide == 2){
     fill(0);
     ellipse(60,110,10,10);
     ellipse(120,70,10,10);
     counter = counter + 2;
    } else if(randSide==3){
     fill(0);
     ellipse(60,110,10,10);
     ellipse(90,90,10,10);
     ellipse(120,70,10,10);
     
     counter = counter + 3;
    } else if(randSide == 4){
      fill(0);
     ellipse(120,70,10,10);
     ellipse(120,110,10,10);
     ellipse(60,110,10,10);
     ellipse(60,70,10,10);
     
     counter = counter + 4;
    } else if(randSide==5){
     fill(0); 
     ellipse(120,70,10,10);
     ellipse(120,110,10,10);
     ellipse(90,90,10,10);
     ellipse(60,110,10,10);
     ellipse(60,70,10,10);
     counter = counter + 5;
    } else { 
      fill(0); 
     ellipse(120,70,10,10);
     ellipse(120,110,10,10);
     ellipse(120,90,10,10);
     ellipse(60,90,10,10);
     ellipse(60,110,10,10);
     ellipse(60,70,10,10);
     counter = counter + 6;
    }
    popMatrix();
    
  }
}

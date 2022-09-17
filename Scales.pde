void setup() {
  size(500, 500);
  frameRate(0.5);
}

void draw() {
  //rows
  boolean shift = true;
  for (float y = 450; y > -80; y-=30) 
  {
    //columns
    for (float x = 450; x > -50; x-=45) 
    {
      if (shift == true)
        scale(x, y);
      else
        scale(x+22.5, y);
    }
    if (shift==true)
      shift=false;
    else
      shift=true;
  }//end y loop
}

void scale(float x, float y) {
  fill((int)(Math.random()*55+200), (int)(Math.random()*55+200), (int)(Math.random()*55+200));
  beginShape();
  curveVertex(40+x, 20+y);
  curveVertex(40+x, 20+y);
  curveVertex(60+x, 40+y);
  curveVertex(60+x, 60+y);
  curveVertex(55+x, 72+y);
  curveVertex(40+x, 90+y);
  curveVertex(40+x, 90+y);
  endShape();
  beginShape();
  curveVertex(40+x, 20+y);
  curveVertex(40+x, 20+y);
  curveVertex(20+x, 40+y);
  curveVertex(20+x, 60+y);
  curveVertex(25+x, 72+y);
  curveVertex(40+x, 90+y);
  curveVertex(40+x, 90+y);
  endShape();
  beginShape();
  curveVertex(58+x, 50+y);
  curveVertex(58+x, 50+y);
  curveVertex(55+x, 60+y);
  curveVertex(50+x, 70+y);
  curveVertex(40+x, 80+y);
  curveVertex(40+x, 80+y);
  endShape();
  beginShape();
  curveVertex(22+x, 50+y);
  curveVertex(22+x, 50+y);
  curveVertex(25+x, 60+y);
  curveVertex(30+x, 70+y);
  curveVertex(40+x, 80+y);
  curveVertex(40+x, 80+y);
  endShape();
}

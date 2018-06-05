PImage image;
int battleLen = 150;
int battleWid = 75;
int width = 480;
int length = 800;
boolean battleClicked = false;

public void setup(){
  surface.setResizable(true);
  size(800,480);
  image = loadImage("Battlefield2.png");
  background(image);
 
   if(battleClicked == false){
  rectMode(CENTER);
  fill(255);
  rect(400,240,150,75);
  fill(0);
  textSize(40);
  textAlign(CENTER,CENTER);
  text("BATTLE",400,240,150,75);
  
  fill(255);
  rect(400,300,100,40);
  fill(0);
  textSize(20);
  text("RUN",400,300,100,40);
 }
 
  else if(battleClicked == true){
    if(mOver(330,315,100,50)){
      fill(200);
    }
    else{
      fill(255);
    }
      rect(330,315,100,50);
      fill(0);
      textSize(20);
      text("Thunder",330,315,100,50);
      
     
      if(mOver(470,315,100,50)){
      fill(200);
    }
    else{
      fill(255);
    }
      rect(470,315,100,50);
      fill(0);
      textSize(20);
      text("Rage",470,315,100,50);
      
      
      if(mOver(330,385,100,50)){
      fill(200);
    }
    else{
      fill(255);
    }
      rect(330,385,100,50);
      fill(0);
      textSize(20);
      text("Recover",330,385,100,50);
      
      
      if(mOver(470,385,100,50)){
      fill(200);
    }
    else{
      fill(255);
    }
      rect(470,385,100,50);
      fill(0);
      textSize(20);
      text("Tackle",470,385,100,50);
      
  }
}
  
public boolean mOver(int xCor,int yCor,int length,int width){
  //MOUSE OVER
  if(mouseX >= xCor - (length / 2 ) && mouseX < xCor - (length / 2) + length && mouseY >= yCor - (width / 2) && mouseY < yCor - (width / 2) + width){
    return true;
  }
  else{
    return false;
  }
}
    


public void mClick(){
  
  //BATTLE BUTTON
  if(battleClicked == false){
  if(mouseX >= (length / 2) - (battleLen / 2) && mouseX < (length / 2) - (battleLen / 2) + battleLen && mouseY >= (width / 2) - (battleWid / 2) && mouseY <  (width / 2) - (battleWid / 2) + battleWid){
      fill(200);
  }
  }
  if(battleClicked == false){
  if(mousePressed){
    if(mouseX >= (length / 2) - (battleLen / 2) && mouseX < (length / 2) - (battleLen / 2) + battleLen && mouseY >= (width / 2) - (battleWid / 2) && mouseY <  (width / 2) - (battleWid / 2) + battleWid){
                battleClicked = true;
      }
  }
  }
  
  if(battleClicked == true){
      if(mousePressed){
         if(mOver(330,315,100,50) || mOver(470,315,100,50) || mOver(330,385,100,50) || mOver(470,385,100,50)){
           battleClicked = false;
         }
      }
}
}
public void draw(){
  if(mousePressed){
      System.out.println("xCor" + mouseX + "   " + "yCor" + mouseY);
  }
 // background(image);
    setup();
    fill(255);
  mClick();
}
  
  
  
  
  
  
  
  
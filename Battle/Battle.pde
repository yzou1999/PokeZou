PImage image;
int battleLen = 150;
int battleWid = 75;
int healthRand = ((int)(Math.random() * (500)) + 1000);
int healthRandP = ((int)(Math.random() * (500)) + 1000);
int width = 480;
int length = 800;
int delayTime;
boolean battleClicked = false;
boolean battleStart = false;
boolean wildTurn = false;
Pokemons starter;
Pokemons wild;
int numb = ((int)(Math.random() * (151)));
String textBox = "Pick A Move For Pikachu To Use!";
//= new Pokemons(0);

public void setup(){
  size(800,480);
  image = loadImage("Battlefield2.png");
  background(image);
starter = new Pokemons(24);
wild = new Pokemons(numb);
if(battleStart == false){
starter.setHealth(healthRandP);
wild.setHealth(healthRand);
battleStart = true;
}
}

public void setup2(){
//x.resize(200,200);
  //x.displayBack(200,200);
  //surface.setResizable(true);
  image = loadImage("Battlefield2.png");
  background(image);
 
   if(battleClicked == false){
  rectMode(CENTER);
  if(mouseX >= (length / 2) - (battleLen / 2) && mouseX < (length / 2) - (battleLen / 2) + battleLen && mouseY >= (width / 2) - (battleWid / 2) && mouseY <  (width / 2) - (battleWid / 2) + battleWid){
      
  fill(200);
  }
  else{
    fill(255);
  }
  rect(400,240,150,75);
  fill(0);
  textSize(40);
  textAlign(CENTER,CENTER);
  text("BATTLE",400,240,150,75);
  
  
  if(mOver(400,300,100,40)){
      fill(200);
  }
  else{
  fill(255);
  }
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
      
      fill(255);
      //rectMode(CENTER);
      rect(400,440,350,35);
      fill(0);
      textSize(15);
      text(textBox,400,440,350,35);
      delay(delayTime);
      delayTime = 0;
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
    
public void enemy(){
  int dmg2 = ((int)(Math.random() * (200)) + 300); 
  if(wildTurn){
     textBox = wild.getName() + " used " + wild.getMove() + " and did " + dmg2 + " damage!";
     if(starter.getHealth() - dmg2 <= 0){
              starter.setHealth(0);
            }
            else{
            starter.setHealth(starter.getHealth() - dmg2);
            }
            
  }
  
  wildTurn = false;
}
  

public void mClick(){
  
  //BATTLE BUTTON
  if(battleClicked == false){
  if(mouseX >= (length / 2) - (battleLen / 2) && mouseX < (length / 2) - (battleLen / 2) + battleLen && mouseY >= (width / 2) - (battleWid / 2) && mouseY <  (width / 2) - (battleWid / 2) + battleWid){
      fill(100);
  }
  }
  if(battleClicked == false){
  if(mousePressed){
    if(mouseX >= (length / 2) - (battleLen / 2) && mouseX < (length / 2) - (battleLen / 2) + battleLen && mouseY >= (width / 2) - (battleWid / 2) && mouseY <  (width / 2) - (battleWid / 2) + battleWid){
                battleClicked = true;
      }
  }
  }
  if(wildTurn == false){
  if(battleClicked == true){
      if(mousePressed){
         if(mOver(330,315,100,50)){
           int dmg = ((int)(Math.random() * (200)) + 300);
            textBox = "Pikachu used Thunder and did" + " " + dmg + " " + "damage!";
           delayTime = 1000;
            if(wild.getHealth() - dmg <= 0){
              wild.setHealth(0);
            }
            else{
            wild.setHealth(wild.getHealth() - dmg);
            }
            wildTurn = true;
         }
           if(mOver(470,315,100,50)){
           int dmg = ((int)(Math.random() * (200)) + 300);
           textBox = "Pikachu used Rage and did" + " " + dmg + " " + "damage!";
           delayTime = 1000;
           if(wild.getHealth() - dmg <= 0){
              wild.setHealth(0);
            }
            else{
            wild.setHealth(wild.getHealth() - dmg);
            }
            wildTurn = true;
         }
           
           if(mOver(330,385,100,50)){
           int dmg = ((int)(Math.random() * (200)) + 300);
           textBox = "Pikachu used Recover and gained" + " " + "400" + " " + "health!";
           delayTime = 1000;
           if(starter.getHealth() + 400 >= healthRandP){
             starter.setHealth(healthRandP);
           }
           else{
             starter.setHealth(starter.getHealth() + 400);
           }
            wildTurn = true;
           }
           
           if(mOver(470,385,100,50)){
           int dmg = ((int)(Math.random() * (200)) + 300);
           textBox = "Pikachu used Tackle and did" + " " + dmg + " " + "damage!";
           delayTime = 1000;
           if(wild.getHealth() - dmg <= 0){
              wild.setHealth(0);
            }
            else{
            wild.setHealth(wild.getHealth() - dmg);
            }
             wildTurn = true;
         }
           
         //  battleClicked = false;
         }
      }
}
}

public void draw(){
  if(mousePressed){
    System.out.println(starter.getTable());
      System.out.println("xCor" + mouseX + "   " + "yCor" + mouseY);
  }
 // background(image);
 mClick();
    setup2();
    fill(255);
  
  
 starter.displayBack(100,300);
 fill(0);
  textSize(20);
 // textAlign(CENTER,CENTER);
  text(starter.getName(),125,375,150,75);
 // starter.setHealth(healthRandP);
  text("Health:" + "  " + starter.getHealth(),125,395,150,75);
 
 
  wild.display(600,100);
  fill(0);
  textSize(20);
  text(wild.getName(),630,70,150,75);
 // wild.setHealth(healthRand);
  text("Health:" + "  " + wild.getHealth(),630,90,150,75);
  enemy();
}
  
  
  
  
  
  
  
  

int value;
int sum;
void setup(){
noLoop();
size(200,200);

}
void draw(){
background  (128, 0, 128);
  for( int x=20; x<=150; x+=55){
  for( int y=20; y<=150; y+=55){
     Die bob= new Die(x,y);
     bob.roll();
     bob.show();
   sum=sum+value;

  }
 
}
//System.out.println(sum);
  textSize(16);
   text("the total is = " + sum , 10, 195);

}

void mousePressed(){

  sum=0;

  redraw();
 
 
}

class Die{
  int myX,myY;
  Die(int x, int y){
 
    myX=x;
    myY=y;
   
  }
void roll(){
   value= (int)(Math.random()*6)+1;//change to 6 finish if thingys
}

void show(){
if(value==1){
fill(255,255,255);
rect( myX,myY,50,50);
fill(0,0,0);
ellipse(myX+25, myY+25,10,10);
}
else if( value==2){
  fill(255,255,255);
rect( myX,myY,50,50);
fill(0,0,0);
ellipse(myX+35, myY+15,10,10);
ellipse(myX+15, myY+35,10,10);
}
else if(value==3){
  fill(255,255,255);
rect( myX,myY,50,50);
fill(0,0,0);
ellipse(myX+37, myY+10,10,10);
ellipse(myX+25.5, myY+25,10,10);
ellipse(myX+13, myY+40,10,10);
}
else if(value==4){
 fill(255,255,255);
rect( myX,myY,50,50);
fill(0,0,0);
ellipse(myX+37, myY+13,10,10);
ellipse(myX+13, myY+13,10,10);
ellipse(myX+37, myY+37,10,10);
ellipse(myX+13, myY+37,10,10);
}
else if(value==5){
  fill(255,255,255);
rect( myX,myY,50,50);
fill(0,0,0);
ellipse(myX+37, myY+13,10,10);
ellipse(myX+13, myY+13,10,10);
ellipse(myX+37, myY+37,10,10);
ellipse(myX+13, myY+37,10,10);
ellipse(myX+25, myY+25,10,10);
}
 

else if(value==6){
   fill(255,255,255);
rect( myX,myY,50,50);
fill(0,0,0);
ellipse(myX+12.5, myY+10,10,10);
ellipse(myX+12.5, myY+25,10,10);
ellipse(myX+12.5, myY+40,10,10);
ellipse(myX+37.5, myY+10,10,10);
ellipse(myX+37.5, myY+25,10,10);
ellipse(myX+37.5, myY+40,10,10);
}

}
    }

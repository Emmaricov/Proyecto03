class Pantalla4{
  //Imagen Pantalla
    PImage Fondo4;
   //Letras imagen
    PImage g1;
    PImage g2;
    PImage g3;
    PImage g4;
    PImage g5;
    
  Pantalla4(){
    //Imagen Pantalla
      Fondo4= loadImage("fondo004.jpg");
      //Letras
      g1= loadImage("win01.png");
      g2= loadImage("win02.png");
      g3= loadImage("win03.png");
      g4= loadImage("win04.png");
      g5= loadImage("win05.png");
      }
      
    void display(){ 
    //Imagen Pantalla
     image(Fondo4,0,0); 
     
   //ESTRELLA1
   fill(random(210,255), 150);
   float pX=200, pY=200, radInt=10, radExt=80;
   int nPun=4;
   pX=500;
   pY=240;
   
   estrella (pX, pY, radInt, radExt, nPun); 
//Estrella 2

   pX=900;
   pY=390;
   estrella(pX, pY, radInt-5, radExt-25, nPun);
  
   
 //INSTRUCCIONES     
      PFont fuente2;
      fuente2 = loadFont("EPSON_行書体Ｍ-80.vlw");
      fill(255);
      textFont(fuente2, 17);
      text("Press the space bar to return to the main menu", 480, 730);
      text("Press ESC to exit", 610, 750);
    }
    
    
   void ganador1(){
      
      switch(jugador1){
          case 1:
          win1.Akabaw();
          image(g1,0,0); 
          break;
    
     case 2:
          win2.Togow();
          image(g2,0,0);
          break;
     
     case 3:  
          win3.Himurow();    
          image(g3,0,0);
      break;
      
     case 4: 
          win4.Sakikabaraw();    
          image(g4,0,0);
     break;
     
     case 5: 
          win5.Momow();
          image(g5,0,0);
     break;
       }
       
   //P1   
      fill(255);
      textSize(60);
      text("P1", 660, 190);
      
  }
  
  void ganador2(){
    
  switch(jugador2){
    case 1:
          win1.Akabaw();
          image(g1,0,0); 
          break;
    
     case 2:
          win2.Togow();
          image(g2,0,0);
          break;
     
     case 3:  
          win3.Himurow();    
          image(g3,0,0);
      break;
      
     case 4: 
          win4.Sakikabaraw();    
          image(g4,0,0);
     break;
     
     case 5: 
          win5.Momow();
          image(g5,0,0);
     break;
       }  
      //P2   
      fill(255);
      textSize(60);
      text("P2", 660, 190);
  }
  
   //ESTRELLAS
        void estrella (float pX, float pY, float radInt, float radExt, int nPun){
             float angulo = TWO_PI/nPun;
             float medAngulo = angulo/2;
  
            beginShape();
            for(float alfa=0; alfa<TWO_PI; alfa+=angulo){
    
            float punX = pX+cos(alfa)*radExt;
            float punY = pY+sin(alfa)*radExt;
            vertex(punX,punY);
    
            punX = pX+cos(alfa+medAngulo)*radInt;
            punY = pY+sin(alfa+medAngulo)*radInt;
            vertex(punX,punY);
            }
            endShape(CLOSE);
            }
  }

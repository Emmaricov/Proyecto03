class Pantalla2{
  //Imagen Pantalla
    PImage Fondo2;
    
  //RECTANGULO
    //TEIICHI
    float x, y;
    //KIKUMA
    float x1, y1;
    //ROLAND
    float x2, y2;
    //KOMEI
    float x3, y3;
    //MOMO ♥
    float x4, y4;
    
    float ancho;
    float alto;
   
  Pantalla2(){
    //Imagen Pantalla
      Fondo2 = loadImage("fondo_02.jpg"); 
      
    //RECTANGULOS
      //TEIICHI
      x = 20;
      y = 465;
      //KIKUMA
      x1 = 292;
      y1 = 465; 
      //ROLAND
      x2 = 573;
      y2 = 465; 
      //KOMEI
      x3 = 852;
      y3 = 465; 
      //MOMO
      x4 = 1117;
      y4 = 465; 
      
      ancho = 61;
      alto = 183;
    }
    
  void display(){
    
    //Imagen Pantalla
     image(Fondo2,0,0);
     
     //Letra instrucciones
      PFont Instrucciones;
      Instrucciones = loadFont("EPSON_行書体Ｍ-80.vlw");
      
      textFont(Instrucciones, 17);
      fill(0);
      text("Select the character's name with the mouse",546,740);
      
//RECTANGULOS RECTANGULOS      
      //RECTANGULO TEIICHI
        //noFill();
        //strokeWeight(2);
        //stroke(0);
        //rect(x, y, ancho, alto);
        
       //RECTANGULO KIKUMA
         //noFill();
         //strokeWeight(2);
         //stroke(0);
         //rect(x1, y1, ancho, alto);
         
       //RECTANGULO ROLAND
         //noFill();
         //strokeWeight(2);
         //stroke(0);
         //rect(x2, y2, ancho, alto);
         
        //RECTANGULO KOMEI
          //noFill();
          //strokeWeight(2);
          //stroke(0);
          //rect(x3, y3, ancho, alto);
         
       //RECTANGULO MOMO
         //noFill();
         //strokeWeight(2);
         //stroke(0);
         //rect(x4, y4, ancho, alto);
         

        
  }
  
 void seleccionJugador1(){
        
    fill(39, 222, 255);
    textSize(50);
    text("PLAYER 1", 600, 715); 
    
//SELECCION DE PERSONAJES    
    if(mouseX > x && mouseX < x+ancho && mouseY > y && mouseY < y+alto) { 
        noFill();
        strokeWeight(10);            
        stroke(0,189,226,70);
        rect(x, y, ancho, alto);
        if(mousePressed==true){
          Seleccion.play(0);
          seleccion++;
          jugadorVida1 = 100;
          jugador1= 1;
          mousePressed=false;
          }
       }
       
    if(mouseX > x1 && mouseX < x1+ancho && mouseY > y1&& mouseY < y1+alto) {    
      noFill();
        strokeWeight(10);            
        stroke(0,189,226,70);
        rect(x1, y1, ancho, alto); 
        if(mousePressed==true){
          Seleccion.play(0);
          seleccion++;
          jugadorVida1 = 100;
          jugador1= 2;
          mousePressed=false;
          }
       }
    if(mouseX > x2 && mouseX < x2+ancho && mouseY > y2 && mouseY < y2+alto) { 
        noFill();
        strokeWeight(10);            
        stroke(0,189,226,70);
        rect(x2, y2, ancho, alto);
        if(mousePressed==true){
          Seleccion.play(0);
          seleccion++;
          jugadorVida1 = 100;
          jugador1= 3;
          mousePressed=false;
          }
      }  
      
     if(mouseX > x3 && mouseX < x3+ancho && mouseY > y3 && mouseY < y3+alto) { 
        noFill();
        strokeWeight(10);            
        stroke(0,189,226,70);
        rect(x3, y3, ancho, alto);
        if(mousePressed==true){
          Seleccion.play(0);
          seleccion++;
          jugadorVida1 = 100;
          jugador1= 4;
          mousePressed=false;
          }
       }
       
     if(mouseX > x4 && mouseX < x4+ancho && mouseY > y4 && mouseY < y4+alto) {   
        noFill();
        strokeWeight(10);            
        stroke(0,189,226,70);
        rect(x4, y4, ancho, alto);
        if(mousePressed==true){
          Seleccion.play(0);
          seleccion++;
          jugadorVida1 = 100;
          jugador1= 5;
          mousePressed=false;
          }
         
       }      
     }
      

  void seleccionJugador2(){
    
    fill(255, 18, 72);
    textSize(50);
    text("PLAYER 2", 600, 715); 
    
//SELECION DE PERSONAJES      
    if(mouseX > x && mouseX < x+ancho && mouseY > y && mouseY < y+alto) { 
        noFill();
        strokeWeight(10);            
        stroke(255,21,76,70);
        rect(x, y, ancho, alto);
        if(mousePressed==true){
          Seleccion.play(0);
          seleccion++;
          jugadorVida2 = 100;
          jugador2= 1;
          mousePressed=false;
          }
       }
       
    if(mouseX > x1 && mouseX < x1+ancho && mouseY > y1&& mouseY < y1+alto) {    
      noFill();
        strokeWeight(10);            
        stroke(255,21,76,70);
        rect(x1, y1, ancho, alto);  
        if(mousePressed==true){
          Seleccion.play(0);
          seleccion++;
          jugadorVida2 = 100;
          jugador2= 2;
          mousePressed=false;
          }
       }
       
    if(mouseX > x2 && mouseX < x2+ancho && mouseY > y2 && mouseY < y2+alto) { 
        noFill();
        strokeWeight(10);            
        stroke(255,21,76,70);
        rect(x2, y2, ancho, alto);
        if(mousePressed==true){
          Seleccion.play(0);
          seleccion++;          
          jugadorVida2 = 100;
          jugador2= 3;
          mousePressed=false;
          }
      }  
      
     if(mouseX > x3 && mouseX < x3+ancho && mouseY > y3 && mouseY < y3+alto) { 
        noFill();
        strokeWeight(10);            
        stroke(255,21,76,70);
        rect(x3, y3, ancho, alto);
        if(mousePressed==true){
          Seleccion.play(0);
          seleccion++;
          jugadorVida2 = 100;
          jugador2= 4;
          mousePressed=false;
          }
       }
       
     if(mouseX > x4 && mouseX < x4+ancho && mouseY > y4 && mouseY < y4+alto) {   
        noFill();
        strokeWeight(10);            
        stroke(255,21,76,70);
        rect(x4, y4, ancho, alto);
        if(mousePressed==true){
          Seleccion.play(0);
          seleccion++;
          jugadorVida2 = 100;
          jugador2= 5;
          mousePressed=false;
          }
       }    

   
       
  } 
}

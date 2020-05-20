class Pantalla3{
  //Imagen Pantalla
    PImage Fondo3;
    
    Pantalla3(){
      //Imagen Pantalla
      Fondo3= loadImage("fondo_003.jpg");
      }
 
 void display(){ 
    //Imagen Pantalla
     image(Fondo3,0,0);     
     
     
 switch(jugador1){
      
   case 1:
        Gato1.Akaba();      
        ataque1=20;
     break;
      
   case 2:
       Gato2.Togo();
       ataque1=20;
    break;
      
   case 3:
        Gato3.Himuro();
        ataque1=30;
    break;
      
   case 4:
        Gato4.Sakikabara();
        ataque1=10;
    break;
      
   case 5:
        Gato5.Momo();
        ataque1=15;
    break;
      }
      
      
  switch(jugador2){
            
   case 01:   
        Gato01.Akabad();
        ataque2=20;
     break;
      
   case 02:
        Gato02.Togod();
        ataque2=20;
    break;
      
   case 03:
        Gato03.Himurod();
        ataque2=30;
    break;
      
   case 04:
        Gato04.Sakikabarad();
        ataque2=10;
    break;
      
   case 05:
       Gato05.Momod();
       ataque2=15;
    break;
      }    
     }
     
     
  void pelea(){
     switch(turnos){
         
     case 1:
      fill(253, 222, 0);
      textSize(48);
      text("Attack!!", 137, 250);
      textSize(33);
      fill(255);
      text("press S", 168, 280);
            if((key=='S' || key=='s') && keyPressed) {
            jugadorVida2 -= ataque1;
            meow1.play(0);
            turnos++;
            
            if(jugadorVida2<=0){
             ganador=1;
             pantalla++;
             Pelea.pause();
             keyPressed=false;
             }
         }
            break;
     
      case 2:
          fill(253, 222, 0);
          textSize(48);
          text("Attack!!", 1050, 250);
          textSize(33);
          fill(255);
          text("press K", 1080, 280);
            if((key=='K' || key=='k') && keyPressed) {
            jugadorVida1-=ataque2;
            meow2.play(0);
            turnos--;
       
            if(jugadorVida1<=0){
             ganador=2;
             pantalla++;
             Pelea.pause();
           } 
         }
     break;
    }
    //PLAYER1
    fill(253, 222, 0);
    textSize(48);
    text("100 / ", 120, 75);
    fill(254, 48, 41);
    text(jugadorVida1, 260,75);
    //PLAYER2
    fill(253, 222, 0);
    text("/ 100", 1100, 75);
    fill(254, 48, 41);
    text(jugadorVida2, 1020,75);
  }
     
   }

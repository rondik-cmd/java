boolean quest1 = true; // Stel in of Quest 1 is voltooid (true) of niet (false)
boolean quest2 = true; // Stel in of Quest 2 is voltooid (true) of niet (false)
boolean quest3 = true; // Stel in of Quest 3 is voltooid (true) of niet (false)

boolean gameGehaald = false; // Standaardinstelling is dat de game niet is gehaald

void setup() {
  size(400, 200);
  textSize(24);
  textAlign(CENTER);
  
  // Controleer of de speler alle drie de quests heeft voltooid
  if (quest1 && quest2 && quest3) {
    gameGehaald = true; // Als alle quests zijn voltooid, wordt gameGehaald op true gezet
  }
  
  if (gameGehaald) {
    println("Gefeliciteerd, je hebt de game gehaald!");
  }
}

void draw() {
}

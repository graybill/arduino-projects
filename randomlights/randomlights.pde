int ledPins[] = {4, 5, 6, 7}; // green, blue, red, and orange LEDs

int loopDuration = 500;

void setup()   {                
  
  // Open serial connection
  Serial.begin(9600);
    
  int i;
  // initialize the digital pins as an output:
  for (i = 0; i < 4; i = i + 1) {
    pinMode(ledPins[i], OUTPUT);
  } 

}


void loop()                     
{

   int i;
  for (i = 0; i < 4; i = i + 1) {
    digitalWrite(ledPins[i],  random(2));   // set the LED to randomly turn on and off
  } 
  delay(loopDuration);                  // wait for a second

}

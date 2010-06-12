int ledPins[] = {4, 5, 6, 7}; // green, blue, red, and orange LEDs

int loopDuration = 500;

int buttonPin = 2;
int buttonState = 0;
int buttonCount = 0;

int photocellPin = 5;
int photocellReading;

void setup()   {                
  
  // Open serial connection
  Serial.begin(9600);
    
  int i;
  // initialize the digital pins as an output:
  for (i = 0; i < 4; i = i + 1) {
    pinMode(ledPins[i], OUTPUT);
  } 
  pinMode(buttonPin, INPUT); // initialize button pin for input

}


void loop()                     
{
  
  photocellReading = analogRead(photocellPin);  
  
  Serial.print("Analog reading = ");
  Serial.println(photocellReading);     // the raw analog reading
  
//  buttonState = digitalRead(buttonPin);
////  Serial.print(buttonState);
//  if (buttonState == 1) {
//     Serial.print("pushed! \n");
//     buttonCount++;
//     Serial.print(buttonCount);
//     Serial.print("\n");
//     Serial.print(buttonCount % 2);
//     Serial.print("\n");
//  }
  


//  if (buttonCount % 2 != 0){
    int i;
    for (i = 0; i < 4; i = i + 1) {
      digitalWrite(ledPins[i],  random(2));   // set the LED to randomly turn on and off
    } 
    delay(loopDuration);      // wait for a second
//  }
//  if (buttonCount %2 == 0) {
//    int i;
//    for (i = 0; i < 4; i = i + 1) {
//      digitalWrite(ledPins[i],  LOW);   // set the LED to randomly turn on and off
//    }
//  }    

}

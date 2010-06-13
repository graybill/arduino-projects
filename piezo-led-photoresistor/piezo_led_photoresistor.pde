int photosensorPin = 0;
int piezoPin = 3;

int redPin = 9;
int greenPin = 10;
int bluePin = 11;

int val = 0;
int colorVal;

void setup() {
  Serial.begin(9600);
  pinMode(piezoPin, OUTPUT);
  pinMode(redPin,   OUTPUT);   // sets the pins as output
  pinMode(greenPin, OUTPUT);
  pinMode(bluePin,  OUTPUT);
}

void loop() {



  digitalWrite(piezoPin, LOW);
  val = analogRead(photosensorPin);
  val = val/2;
//  Serial.println(val);
  colorVal = val/2;
  Serial.println(val);

  analogWrite(redPin,val/2);
  analogWrite(greenPin,val*2);
  analogWrite(bluePin,val);


  for( int i=0; i<500; i++ ) {  // play it for 50 cycles

    digitalWrite(piezoPin, HIGH);
    delayMicroseconds(val);
    digitalWrite(piezoPin, LOW);
    delayMicroseconds(val);

  }
  

}

#include <Servo.h>

#define IN 3 // A3
#define OUT 4

#define POS_OFF 30
#define POS_ON  0

Servo servo;

void setup()
{
    pinMode(IN, INPUT);
    servo.attach(OUT);
    servo.write(POS_OFF);
}

void loop()
{
    if(digitalRead(IN))
    {
        servo.write(POS_ON);
    }
    else
    {
        servo.write(POS_OFF);
    }
    
    delay(10);
}
#include "SmoothADC.h"

#define IN 3 // A3
#define OUT 4

#define INVERT //uncomment to invert output logic
#ifdef INVERT
    #define ON LOW
    #define OFF HIGH
#else
    #define ON HIGH
    #define OFF LOW
#endif

SmoothADC ADC_IN;

void setup()
{
    pinMode(IN, INPUT);
    pinMode(OUT, OUTPUT);
}

void loop()
{
    if(digitalRead(IN) == HIGH)
    {
        digitalWrite(OUT, ON);
    }
    else
    {
        digitalWrite(OUT, OFF); 
    }
    // digitalWrite(OUT, ON);
    // delay(500);
    // digitalWrite(OUT, OFF);
    // delay(500);
}
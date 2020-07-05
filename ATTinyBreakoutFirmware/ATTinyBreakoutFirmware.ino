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

    delay(1);
}

#include "SmoothADC.h"

#define IN A3
#define OUT 4
#define THRESHOLD 32 // 0 - 1023
#define SAMPLES 10
#define SAMPLE_DELAY 3

// #define INVERT //uncomment to invert output logic
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
    ADC_IN.init(IN, TB_MS, 25);
    if (ADC_IN.isDisabled())	{ ADC_IN.enable(); }

    // pinMode(IN, INPUT); // handled in SmoothADC
    pinMode(OUT, OUTPUT);
}

void loop()
{
    static unsigned int aVal = 0;
    ADC_IN.serviceADCPin();
    aVal = ADC_IN.getADCVal();
    if(aVal >= THRESHOLD)
    {
        digitalWrite(OUT, ON);
    }
    else
    {
        digitalWrite(OUT, OFF); 
    }
}
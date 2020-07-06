#include <Servo.h>

#define ADJ_IN A1 // D2
#define IN 3 // A3
#define OUT 4

#define POS_OFF 0
#define POS_ON  30

#define FILTER_COUNT 8
#define FILTER_MIN   0.75
#define FILTER_DELAY 5

Servo servo;

void setup()
{
    pinMode(IN, INPUT);
    servo.attach(OUT);
    servo.write(POS_OFF);
}


void loop()
{
    static int last_pos = 255;
    static int pos;
    static float val;
    static int adj_val;
    static int on_pos;
    static int i;

    val = 0.0;
    adj_val = 0;
    for(i=0; i<FILTER_COUNT; i++)
    {
        val += static_cast<float>(digitalRead(IN));
        adj_val += analogRead(ADJ_IN);
        delay(FILTER_DELAY);
    }

    val = val / FILTER_COUNT;
    adj_val = adj_val / FILTER_COUNT;

    if(val >= FILTER_MIN)
    {
        pos = POS_ON;
    }
    else
    {
        pos = POS_OFF;
    }

    if(pos != last_pos)
    {
        servo.write(pos);
        last_pos = pos;
    }
}
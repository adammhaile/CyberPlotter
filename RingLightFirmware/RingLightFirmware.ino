#define ADJ_IN A1 // D2
#define OUT 4

#define FILTER_COUNT 20
#define FILTER_DELAY 5

void setup()
{
    pinMode(ADJ_IN, INPUT);
    pinMode(OUT, OUTPUT);
}


void loop()
{
    static int adj_val;
    static int i;

    for(i=0; i<FILTER_COUNT; i++)
    {
        adj_val += analogRead(ADJ_IN);
        delay(FILTER_DELAY);
    }

    adj_val = adj_val / FILTER_COUNT;

    analogWrite(OUT, map(adj_val, 0, 1023, 255, 0));
}
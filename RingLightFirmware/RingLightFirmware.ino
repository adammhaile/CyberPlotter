#define ADJ_IN A1 // D2
#define OUT 4

void setup()
{
    pinMode(ADJ_IN, INPUT);
    pinMode(OUT, OUTPUT);
}


void loop()
{
    static int adj_val;
    
    adj_val = analogRead(ADJ_IN);
    analogWrite(OUT, map(adj_val, 0, 1023, 0, 255));
}
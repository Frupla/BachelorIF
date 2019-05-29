/*
 Name:		encoderSimulator.ino
 Created:	28-May-19 12:09:53
 Author:	Frederik
*/


#define PULSES_PER_REVOLUTION 720.

#define A_PIN 33
#define B_PIN 34
#define Z_PIN 35

#define BUTTON_1_PIN 11
#define BUTTON_2_PIN 25

IntervalTimer ABZ_pulse;

char lastPulse = 'a';
float RPM = 0;
float T = 0;
bool aState = 1;
bool bState = 0;
int pulses = 0;

// the setup function runs once when you press reset or power the board
void setup() {
	RPM = 2000;
	T = (1/PULSES_PER_REVOLUTION * (60 / RPM))*1000*1000;
	pinMode(A_PIN, OUTPUT);
	pinMode(B_PIN, OUTPUT);
	pinMode(Z_PIN, OUTPUT);

	pinMode(BUTTON_1_PIN, INPUT);
	pinMode(BUTTON_2_PIN, INPUT);

	digitalWriteFast(A_PIN, HIGH);
	digitalWriteFast(B_PIN, LOW);

	ABZ_pulse.begin(ABZ_pulseHandler, T / 2);
	ABZ_pulse.priority(0);

	attachInterrupt(BUTTON_1_PIN, button_1_handler, RISING);
	attachInterrupt(BUTTON_2_PIN, button_2_handler, RISING);

}

// the loop function runs over and over again until power down or reset
void loop() {

}

void button_1_handler() {
	if (RPM < 6000) {
		RPM += 50;
		T = 1 / PULSES_PER_REVOLUTION * (60 / RPM) * 1000 * 1000;
		ABZ_pulse.update(T / 2);
	}
}


void button_2_handler() {
	if (RPM > 0) {
		RPM -= 50;
		T = 1 / PULSES_PER_REVOLUTION * (60 / RPM) * 1000 * 1000;
		ABZ_pulse.update(T / 2);
	}
}

void ABZ_pulseHandler() {
	if (pulses <= 2) {
		digitalWriteFast(Z_PIN, LOW);
	}
	pulses++;
	if (lastPulse == 'a') {
		bState = !bState;
		digitalWriteFast(B_PIN,	bState);
		lastPulse = 'b';
	}else if (lastPulse == 'b') {
		aState = !aState;
		digitalWriteFast(A_PIN, aState);
		lastPulse = 'a';
	}
	if (pulses >= PULSES_PER_REVOLUTION * 4) {
		digitalWriteFast(Z_PIN, HIGH);
		pulses = 0;
	}

}

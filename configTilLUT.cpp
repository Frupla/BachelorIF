#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int rpm2rpmIndex(int rpm) {
	if (rpm < 1750) {
		return 0;
	}
	if (rpm > 4000) {
		return 18;
	}
	return (rpm / 125) - 14;
}

int temp2tempIndex(int temp) {
	if (temp < 60) {
		return 0;
	}
	if (temp > 90) {
		return 6;
	}
	return (temp / 5) - 12;
}

int main (){

	int injectionLut1[7][31];
	int injectionLut2[7][31];
    
    char input[85];
	char c;
	int RPM = 0;
	int temp = 0;
	int inj1 = 0;
	int inj2 = 0;
	ifstream infile;
	infile.open ("pre_tuning_1_3_map.txt");
	while(infile.get(c)){
		if(c == 'L'){
			infile.get(c);
			if(c == 'R'){
				infile.get(c);
				if(c == 'P'){
					infile.get(c);
					infile.get(c);
					infile.get(c);
					infile.get(c);
					while(c != ','){
						RPM = RPM*10 + (int)c - 48;
						infile.get(c);
					}
					while(c != ':'){
						infile.get(c);
					}
					infile.get(c);
					infile.get(c);
					while(c != ','){
						temp = temp*10 + (int)c - 48;
						infile.get(c);
					}
					while(c != ':'){
						infile.get(c);
					}
					infile.get(c);
					infile.get(c);
					while(c != ','){
						inj1 = inj1*10 + (int)c - 48;
						infile.get(c);
					}
					while(c != ':'){
						infile.get(c);
					}
					infile.get(c);
					infile.get(c);
					while(c != ','){
						inj2 = inj2*10 + (int)c - 48;
						infile.get(c);
					}
				}
				injectionLut1[temp2tempIndex(temp)][rpm2rpmIndex(RPM)] = inj1;
				injectionLut2[temp2tempIndex(temp)][rpm2rpmIndex(RPM)] = inj2;
				temp = 0;
				RPM = 0;
				inj1 = 0;
				inj2 = 0;
			}
		}
	}
	infile.close();

	for(int i = 0; i < 7; i++){
		for(int j = 0; j < 19; j++){
			cout << " " << injectionLut1[i][j];
		}
		cout << endl;
	}

	return 0;
}

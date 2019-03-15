#include <iostream>
#include <stdio.h>
#include <fstream>
#include <string>

using namespace std;



int main(){

	int n = 407;
	int q = 0;

	int repeats = 0;
	int lineNumber = 0;
	string x;
	ifstream inFile;

	string logHeader = "OnTime (ms), Time (UTC), Speed (km/h), Distance (m), RPM, Lambda, Starter, Gear, Fuel correction, Fuel consumption (km/l), Fuel consumed (g), Battery voltage (V), Oil temperature (C), Water temperature (C), Exhaust temperature (C), Brake front (bar), Brake rear (bar), State, Injection duration (us), Injection angle";

	string filePath = "C:\\Users\\tilfr\\Dropbox\\DTU\\EcoCar\\BachelorIF\\Behandlet data\\logType2\\";

	

	string toOpen;

	
	for(int i = 1; i <= n; i++){
		toOpen = filePath + "logType2 (" + to_string(i) + ").csv";
		

		//cout << toOpen << endl;


		inFile.open(toOpen);

		ofstream output(filePath + "logType2 (" + to_string(i) + ") clean.csv");

		if(!inFile){
			cout << "Unable to open " << toOpen << endl;
		}else{
			while(getline(inFile,x)){
				//cout << x << endl;

				q = x.find("ovf");

//				cout << x << " q: " << q << endl; 

				if(q > 0){
//					cout << "replacing" << endl;
					x.replace(q,q+2,"999");
				}

				output << x << endl;
				
			}
		}

		inFile.close();
	}
	return 0;
}


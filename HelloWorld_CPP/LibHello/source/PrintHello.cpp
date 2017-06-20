#include <PrintHello.h>

using namespace std;

PrintHello::PrintHello(string who, int times) : who( who ), times( times ) {}
		
void PrintHello::PrintNow(){
	for(int i = 0 ; i < this->times ; i++ ){
		cout << " Hello, " << who << "!" << endl;  
	}
}

void PrintHello::PrintNow(int times){
	this->times = times;
	this->PrintNow();
}
	
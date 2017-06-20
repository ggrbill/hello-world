#include <iostream>
#include <string>

class PrintHello{
	public: 
		PrintHello(std::string who, int times = 1);
		
		void PrintNow();
		void PrintNow(int times);
		
		~PrintHello(){}
	protected:
		std::string who;
		int times;
};
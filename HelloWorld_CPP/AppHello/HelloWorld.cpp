#include <iostream>
#include <PrintHello.h>

using namespace std;

int main()
{
	PrintHello printer("World");
	printer.PrintNow();
	
	PrintHello printer_("Brazil");
	printer_.PrintNow(4);

	printer.PrintNow();
	
	//cout << endl;
	//cout << "#################\n";
	//cout << "# Hello, world! #\n";
	//cout << "#################\n";
}
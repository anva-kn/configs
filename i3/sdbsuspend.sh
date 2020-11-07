//============================================================================
// Name        : yello.cpp
// Author      : Denys Zheliezniak
// Version     :
// Copyright   : WTFPL
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <fstream>
#include <cstdio>

#include <chrono>

using namespace std;
using namespace std::chrono;

class Timer
{
	high_resolution_clock::time_point Ti;
public:
	Timer()
	{
		Ti = high_resolution_clock::now();
	}
	inline void setTi()
	{
		Ti = high_resolution_clock::now();
	}
	inline auto getDuration()
	{
		return duration_cast<microseconds>( high_resolution_clock::now() - Ti ).count();
	}
};

int main()
{
	fstream fs;
	fs.open("results.txt", std::fstream::out);
	int i = 0;
#define MAX_NUM 10000

	Timer tmr;
	for(;i <= MAX_NUM; ++i)
	{
		cout << i << endl;
	}
	fs << "cout&endl: " << tmr.getDuration() << "\n";

	i = 0;
	tmr.setTi();
	for(;i <= MAX_NUM; ++i)
	{
		printf("%i\n", i);
	}
	fs << "printf: " << tmr.getDuration() << "\n";

	i = 0;
	tmr.setTi();
	for(;i <= MAX_NUM; ++i)
	{
		cout << i << '\n';
	}
	fs << "cout&\\n: " << tmr.getDuration() << "\n";

	fs.close();
	return 0;
}

#include<iostream>
#include<vector>
using namespace std;

int main()
{
	vector<string> fragor;
	fragor.push_back(string("-	Från vilka ord har svenskan lånat ord?"));
	fragor.push_back(string("-	När blev svenskan ett eget språk?"));
	fragor.push_back(string("-	Vilka länder har lånat ord från svenskan?"));
	fragor.push_back(string("-	Hur har svenskan förändrats genom åren?"));
	fragor.push_back(string("-	Hur gamla texter kan vi läsa och förstå?"));
	fragor.push_back(string("-	När använde vi runor?"));
	fragor.push_back(string("-	När och hur kom de latinska bokstäverna till sverige?"));
	fragor.push_back(string("-	Vilka språkliga förändringar har ägt rum?"));
	
	for(int i=0; i<fragor.size(); i++) {
		cout<<fragor[i]<<endl;
	}
	return 0;
}

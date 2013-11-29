#include<iostream>
#include<vector>
using namespace std;

int main()
{
	vector<string> fragor;
	fragor.push_back(string("-	Från vilka ord har svenskan lånat ord? När? Ge exempel!"));
	fragor.push_back(string("-	När blev svenskan ett eget språk?"));
	fragor.push_back(string("-	Vilka länder har lånat ord från svenskan?"));
	fragor.push_back(string("-	Hur har svenskan förändrats genom åren?"));
	fragor.push_back(string("-	Hur gamla texter kan vi läsa och förstå?"));
	fragor.push_back(string("-	När använde vi runor?"));
	fragor.push_back(string("-	När och hur kom de latinska bokstäverna till sverige?"));
	fragor.push_back(string("-	Vilka språkliga förändringar har ägt rum?"));
	
	vector<string> svar;
	svar.push_back("-  Keltiska, ");
	svar.push_back("-  ");
	svar.push_back("-  ");
	svar.push_back("-  ");
	svar.push_back("-  ");
	svar.push_back("-  ");
	svar.push_back("-  ");
	svar.push_back("-  ");

	for(int i=0; i<fragor.size(); i++) {
		cout<<i+1<<" "<<fragor[i]<<"         "<<svar[i]<<endl;
	}
	return 0;
}

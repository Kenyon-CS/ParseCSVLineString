// C++ program to parse a comma-separated string 
#include<iostream>  
#include <sstream>      // std::stringstream
using namespace std; 
  
int main() 
{ 
    string str = "1, 2, Gambier, 4, 5, 6, Kenyon, College"; 
    vector<string> v; 
  
    stringstream ss(str); 
  
    while (ss.good()) { 
        string substr; 
        getline(ss, substr, ','); 
        v.push_back(substr); 
    } 
  
    for (size_t i = 0; i < v.size(); i++) 
        cout << v[i] << endl; 
} 

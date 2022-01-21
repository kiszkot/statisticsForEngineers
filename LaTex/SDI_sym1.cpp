#include <iostream>
#include <random>
#include <time.h>
using namespace std;

int main() {

    default_random_engine generator;
    uniform_real_distribution<double> distribution(0.0,1.0);

    unsigned seed = time(NULL);

    generator.seed(seed);

    int k;
    cin >> k;

    for(int i = 1; i<=k; i++){
        cout << distribution(generator) << endl;
    }

    return 0;
}

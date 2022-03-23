#include <stdio.h>

float toMile(int i){
	return i/1.609;
}

int main(){
	float mile;

	for(int i = 1; i <= 10; i++){
		mile = i/1.609;

		printf("%d km(s) in miles: %f \n", i, mile);
	}

	return 0;
}

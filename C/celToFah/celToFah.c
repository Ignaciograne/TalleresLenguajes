#include <stdio.h>

int main(){
	float celsius, fahrenheit;

	printf("Enter the degrees in celsius: ");
	scanf("%f", &celsius);

	fahrenheit = (celsius * 9/5) + 32;

	printf("%f degrees in celsius equals %f in fahrenheit \n", celsius, fahrenheit);

	return 0;
}

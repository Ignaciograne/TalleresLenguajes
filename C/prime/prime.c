#include <stdio.h>
#include <stdbool.h>

bool isPrime_aux(int number, int cont){
        if (number == cont)
                return true;
        if (number % cont == 0)
                return false;
        else
                isPrime_aux(number, cont+1);
}


bool isPrime(int num){
        if (num == 1 || num == 2)
                return true;
        if (num % 2 == 0)
                return false;
        else
                isPrime_aux(num, 3);
}

int main(){
	int number;
	bool x;

	printf("Enter a number: ");
	scanf("%d", &number);

	x = isPrime(number);

	printf(x ? "It is prime \n" : "Not prime \n");

	return 0;
}

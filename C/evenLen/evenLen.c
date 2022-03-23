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

int getLen(int number){
	static int count = 0;
	if (number > 0){
		if ((number%10) % 2 == 0) //Condicion de par
			count++;
		getLen(number/10);
	} else
		return count;
}

int main(){
	int number, length;

	printf("Enter a number: ");
	scanf("%d", &number);

	length = getLen(number);

	printf("%d even numbers in %d \n", length, number);
	return 0;
}

#include <stdio.h>

//int numberLen(int number, int n){
int numberLen(int number){
	static int n = 0;
	if (number > 0){
		numberLen(number/10);
		n++;
		//numberLen(number/10, n+1);
	} else {
		return n;
	}
}

int main(){
	int number, length;

	printf("Ingrese un número: ");
	scanf("%d", &number);

	//length = numberLen(number, 0);
	length = numberLen(number);

	printf("%d's length is %d \n", number, length);

	return 0;
}

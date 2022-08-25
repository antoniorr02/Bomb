#include <stdio.h> // para printf(), fgets(), scanf()
#include <stdlib.h> // para exit()
#include <string.h> // para strncmp()
#include <sys/time.h> // para gettimeofday(), struct timeval

#define SIZE 100
#define TLIM 5


char a = 'h';
char e = 'o';
const char d ='z';
char f = 'r';
char g = 'm';
const char h = d; 
char b = 'i';
char i = 'g';
char j = 'a';
const char k = h;
char c = 's';


char falso[]="clave\n";
int user = 1102;

void boom(void){
	printf( "\n"
		"***************\n"
		"*** BOOM!!! ***\n"
		"***************\n"
		"\n");
	exit(-1);
}

void defused(void){
	printf( "\n"
		"·························\n"
		"··· bomba desactivada ···\n"
		"·························\n"
		"\n");
	exit(0);
}

int main(){

	char pw[SIZE];
	int n, pc;

	struct timeval tv1,tv2;
	gettimeofday(&tv1,NULL);
	
	do printf("\nIntroduce la contraseña: ");
	while ( fgets(pw, SIZE, stdin) == NULL );
	char b = pw[0];
	if (strlen(pw) == 4) {
		if (pw[0] != d) boom();
		if (pw[1] != h) boom();
		if (pw[2] != k) boom();
	} else {
		boom();}

	gettimeofday(&tv2,NULL);
	if ( tv2.tv_sec - tv1.tv_sec > TLIM )
		boom();

	do { printf("\nIntroduce el pin: ");
		if ((n=scanf("%i",&pc))==0)
			scanf("%*s" )==1; }
	while ( n!=1 );
	if ( pc != user )
 		boom();

 	gettimeofday(&tv1,NULL);
	if ( tv1.tv_sec - tv2.tv_sec > TLIM )
 		boom();

	defused();
}

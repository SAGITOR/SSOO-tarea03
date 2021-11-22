#include "global.hh"

#include <unistd.h>

void signal_handler( int signal_num ) {
	if(signal_num == 10){
		wait(NULL);
		exit(EXIT_SUCCESS);
	}else if (signal_num == 12){
		exit(EXIT_SUCCESS);
	}else{
		std::cout << "\nDetencion no permitida." << std::endl; 
	}
}

int main(int argc, char* argv[]){

	int result = fork();
	int count = 0;
	// register the signals and the signal handler
	std::signal(SIGTERM, signal_handler);
	std::signal(SIGINT, signal_handler);
	std::signal(SIGTSTP, signal_handler);
	std::signal(SIGQUIT, signal_handler);
	std::signal(SIGUSR1, signal_handler);
	std::signal(SIGUSR2, signal_handler);
	if (result > 0 ){

		long int anterior = 0;
		long int actual = 1;
		long int siguiente = 0;
		while(count <= 50) {
                       std::cout << "Valor Fibonacci: " << actual <<  " - PPID = " << getpid() << std::endl;
                       siguiente = actual + anterior;
                       anterior = actual;
                       actual = siguiente;
                       ++count;
                	std::this_thread::sleep_for (std::chrono::milliseconds(1000));
		}
		wait(NULL);
	}else if (result == 0){
	        while(count <= 50) {
 			std::cout << "Valor Impar: " << (2*count + 1) <<  " - PID = " << getpid() << std::endl;
                	++count;
                	std::this_thread::sleep_for (std::chrono::milliseconds(1100));
                }
	}

	return EXIT_SUCCESS;
}
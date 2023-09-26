//Author: Drashti Mehta
//Date: 09/05/2023
//Program name: 240 Section 03 Assignment 01 - Las Vegas

 

#include <stdio.h>


extern double * manage(unsigned long * n);
 

int main() {
   
    printf("\nWelcome to Array Management System.\n");
     
    printf("This product is maintained by Drashti Mehta at dumehta@csu.fullerton.edu\n\n");
  
     
  
    unsigned long size = 0;
    
    double * array = manage(&size);
    
    printf("\nThe main function received this array: \n");
    
    for( int i =0; i < size; i++)
    {
    	printf("%.3lf\n", array[i]);
    }
    
  
    //printf("\nThe main function received this number %.10lf and will keep it for a while.", totalSum);
    
     
   
    printf("\nPlease consider buying more software from our suite of commerical program.\n");
    
    printf("A zero will be sent to your operating system. Bye\n");

    return 0;
}


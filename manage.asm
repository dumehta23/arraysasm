;Author: Drashti Mehta
;Date: 09/05/2023
;Program name: 240 Section 03 Assignment 02 - Arrays

 
extern input_array
extern output_array
extern sum_array
extern printf
extern scanf


section .data
    prompt_1 db "We will take care of all your array needs.", 10, 0
    prompt_2 db 'Please input float numbers seperated by ws. After the last number press ws followed by control-d:', 10, 0
  
    prompt_newline db '', 10, 0
    prompt_3 db "Thank you. The numbers in the array are:", 10, 0
 
    prompt_4 db 'The sum of the numbers in the array is %.10lf', 10, 0
    prompt_5 db 'Thank you for using the Array Management System.', 10, 0

 
max_size equ 8

section .bss
    array resq 8        ; Define array to store floating-point numbers


section .text
    global manage

manage:
 
;=========== Back up all the integer registers used in this program =======================================================
    pushf
    push rax
    push rcx
    push rdx
    push rsi
    push rdi
    push rbp

    push r8
    push r9
    push r10
    push r11
    push r12
    push r13
    push r14
    push r15
    
    
 
   ; prompt message 1  
    mov rax, 0
    mov rdi, prompt_1
    call printf
    
    
    ; prompt message 2  
    mov rax, 0
    mov rdi, prompt_2
    call printf
    
    
 
    
    
    ;call input array to read and store numbers
    mov rax, 0
    mov rdi, array
    mov rsi, max_size
    call input_array
   
    mov rbx, rax
    
    ;prompt newline
    mov rax, 0
    mov rdi, prompt_newline
    call printf
      
    ; prompt message 3 
    mov rax, 0
    mov rdi, prompt_3
    call printf
    
    
    
    
  
    
    
    
    ;call output array to print numbers from input 
    mov rax, 0
    mov rdi, array
    mov rsi, rbx
    call output_array
    
    
    
    
    
    ;call sum array to calc sum
    mov rax, 0
    mov rdi, array
    mov rsi, rbx
    call sum_array
   
    movq xmm12, xmm0 
   
    
    ; prompt message 4 to print sum
    mov rax, 1
    mov rdi, prompt_4
    movq rsi, xmm12
    call printf
   
    
    
    

 
    ; prompt message 5 
    mov rax, 0
    mov rdi, prompt_5
    call printf
    
    
    
 
	pop r15                                   
	pop r14                                   
	pop r13                                   
	pop r12                                   
	pop r11                                  
	pop r10                                     
	pop r9                                     
	pop r8                                    

	pop rbp
	pop rdi
	pop rsi
	pop rdx
	pop rcx
	pop rax
	popf
    
    
    movq xmm0, xmm12
    mov qword [rdi], rbx
    mov rax, array
    
    
    
        
    ret

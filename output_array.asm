;Author: Drashti Mehta
;Date: 09/05/2023
;Program name: 240 Section 03 Assignment 02 - Arrays

extern printf
 

section .data 
    format_out5 db '%.10lf', 10, 0
    
 
    
section .text
    global output_array

output_array:
 
  
    push rax
    push rbx
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
 

    mov r14, rdi        ; Store the address of the array in r14
    mov r15, rsi        ; Store the array count in r15
  
    
  
    
    
    mov r13, 0          ; Initialize a counter (r13) to zero

print_values:
    cmp r13, r15        ; Compare the counter to the max_size
    je done            ; If they are equal or greater, we are done with printing
    
    mov rax, 1
    mov rdi, format_out5
    movq xmm0, [r14 + r13 * 8]
    call printf

    inc r13              ; Increment the counter
    jmp print_values     ; Continue printing the next value

done:
    
 
   
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
	pop rbx
	pop rax

    ret


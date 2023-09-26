;Author: Drashti Mehta
;Date: 09/05/2023
;Program name: 240 Section 03 Assignment 02 - Arrays


extern printf

 

section .text
    global sum_array

sum_array:

 
    push rax
    push rbx
    push rcx
    push rdx
    push rsi
    push rdi
    push rbp
    push rsp
    push r8
    push r9
    push r10
    push r11
    push r12
    push r13
    push r14
    push r15
    


  
    mov r14, rdi        ; r14: Address of the array
    mov r15, rsi        ; r15: Array size
    

    xorpd xmm13, xmm13    ; Initialize xmm0 to 0.0 for the sum
    
    mov r13, 0          ; Initialize a counter (r13) to zero

calculate_sum:
    cmp r13, r15        ; Compare the counter to the array size
    je print_sum        ; If they are equal, print the sum
    
   
    movq xmm14, [r14+r13*8]  ; Load the current array element into xmm14
    addsd xmm13, xmm14        ; Add xmm14 to xmm13 (accumulate the sum)
     
    
    inc r13               ; Increment the counter
    jmp calculate_sum     ; Continue summing the next element

print_sum:
 
 
	pop r15                                     
	pop r14                                   
	pop r13                                     
	pop r12                                     
	pop r11                                     
	pop r10                                    
	pop r9                                      
	pop r8                                      
    pop rsp
    pop rbp
    pop rdi
    pop rsi
    pop rdx
	pop rcx
	pop rbx
	pop rax
 
    movq xmm0, xmm13
    

    ret


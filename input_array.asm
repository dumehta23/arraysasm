 ;Author: Drashti Mehta
;Date: 09/05/2023
;Program name: 240 Section 03 Assignment 02 - Arrays



extern printf
extern scanf


section .data
    format_in db "%lf", 0  
    
 
   

section .text
    global input_array

input_array:
 
    pushf
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
    mov r15, rsi        ; Store the max_size in r15
    
    mov r13, 0       ; Initialize a counter (r13) to zero
    
begin:
     
    
    cmp r13, r15        ; Compare the counter to the max_size
    je done             ; If they are equal, we are done with input
    
    ; Read a floating-point number from the user into the current array element
    mov rax, 0
    mov rdi, format_in  ; Load the format specifier for scanf
    mov rsi, rsp        ; Load the address of the scanf result into rsi
    call scanf          ; Call the scanf function
    movsd xmm11, qword [rsp]
    
    cdqe                 ; Sign-extend rax to the size of rdi (quadword)
    cmp rax, -1          ; Check if scanf failed to convert (likely due to Ctrl-D)
    je done              ; If so, we are done
   

    movq [r14+r13*8], xmm11  ; Store the value in the current array element
    
 
    
    inc r13               ; Increment the counter
    jmp begin             ; Continue reading the next value
    
done:
 
   
   ;num of values entered in rax
    mov rax, r13
    
pop        r15                                  
pop        r14                                     
pop        r13                                   
pop        r12                                   
pop        r11                                    
pop        r10                                   
pop        r9                                      
pop        r8                                    
 
pop rbp
pop rdi
pop rsi
pop rdx
pop rcx
pop rbx
popf
   
  
    
 
    ret

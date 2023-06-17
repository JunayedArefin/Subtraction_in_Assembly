.model small
.stack 100h
.data
    msg db "Enter a number: $"  
    

.code
main proc
      
      
      mov ah,1   ; 1st value
      int 21h    ; data store in al
      mov cl,al  ; move data from al to cl
              
              
      mov ah,1   ; 2nd value
      int 21h    ; data store in al
      mov bl,al  ; move data from al to bl
      
      
      
      sub cl,bl 
      add cl,48
 
      
      mov ah,2   ; show output
      mov dl,cl
      int 21h
      

    main endp
end main
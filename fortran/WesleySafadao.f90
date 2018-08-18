      ! FORTRAN IS ALIVE

      PROGRAM safadao
      
      CALL safadeza(8, 8, 90)

      END PROGRAM safadao

      SUBROUTINE safadeza(dia, mes, ano)
      
      INTEGER dia, mes, ano, soma_mes, i
      REAL*8 safado, anjo
      
      soma_mes = 0

      DO i = 1, mes
         soma_mes = soma_mes + i
      END DO

      safado = soma_mes + (ano / 100.) * (50 - dia)
      anjo = 100 - safado

      WRITE(*,'(a,F5.2,a,F5.2,a)')'Você é ',safado,'% safado e ',anjo,'% anjo'
      
      END SUBROUTINE safadeza    


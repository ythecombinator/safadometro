Imports System
							
Public Module VBModule
 
	Public Sub Main()  
    
    Dim wesleysafadao As String 
	Dim values(6) As Double
   
	Console.WriteLine("Entre com sua data de nascimento, sem separar por barra: ")
	wesleysafadao = Console.ReadLine()
        
		values(2) = wesleysafadao.substring(0,2)
		values(3) = wesleysafadao.substring(2,2)
		values(4) = wesleysafadao.substring(4,2)
        
	For item As Double = 0 To values(3)
		values(1) += item
	Next
	
    values(0) = values(1)+(values(4)/100)*(50-values(2))
	values(5) = 100 - values(0)
        
	Console.WriteLine("Você é " & values(0) & "% safado" & " e " & values(5) & "% anjo.")
    
    End Sub

End Module

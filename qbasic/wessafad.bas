						
Dim wesleysafadao
Dim values

print "Entre com sua data de nascimento, sem separar por barra: "
input wesleysafadao
    
values(2) = mid$(wesleysafadao,1,2)
values(3) = mid$(wesleysafadao,3,2)
values(4) = mid$(wesleysafadao,5,2)
    
For i = 0 To values(3)
	values(1) += item
Next

values(0) = values(1)+(values(4)/100)*(50-values(2))
values(5) = 100 - values(0)
    
print "Você é " + values(0) + "% safado" + " e " + values(5) + "% anjo."

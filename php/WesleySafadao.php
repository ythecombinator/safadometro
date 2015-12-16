<?php

function wesley_safadao($dia, $mes, $ano){
	$sum = 0;	
	while ($mes > 0)
	{
        $sum += $mes;
        $mes--;
	}
	  	
	$safadeza = $sum + ($ano / 100) * (50 - $dia);
	$anjo = 100 - $safadeza;
	
	return "Você é ".$safadeza."% safado e ".$anjo."% anjo";
	
}

somatorio=function(month)
	local result = 0
	for val = 1,month do
		if month <= month then
			local p = 1
			month = month - 1
			p = p + month
			result = result + p
		end
	end
	return result
end
wesley_safadao=function(birthday)
	if type(birthday)=="string" then
		local day,month,year = birthday:match('(%d*)/(%d+)/*(%d+)');
		day,month,year = tonumber(day),tonumber(month),tonumber(year);
		if day < 32 and day > 0 and month < 13 and month > 0 and year <= tonumber(os.date('%Y')) then
			day,month,year = not day and 1 or day,not month and 1 or month,not year and 2000 or tonumber(tostring(year):sub(3));
			local safadeza,anjo = 0,0
			if day==6 and mes==9 and year==96 then
				anjo = "99"
				safadeza = "1"
			else
				safadeza = somatorio(month)+(year/100)*(50-day)
				anjo = 100-safadeza
			end
			local w,x = math.modf(safadeza)
			local y,z = math.modf(anjo)
			if x == 0 then safadeza = math.floor(safadeza) end
			if z == 0 then anjo = math.floor(anjo) end 
			if safadeza < 100 and safadeza > 0 then
				if anjo < 100 and anjo > 0 then
					if safadeza + anjo == 100 then
						print("\nSafadeza: "..safadeza.."%\nAnjo: "..anjo.."%\n\n\"[...]"..string.char(84,195,180,32,110,97,109,111,114,97,110,100,111,32,116,111,100,111,32,109,117,110,100,111,10)..anjo..string.char(37,32,97,110,106,111,44,32,112,101,114,102,101,105,116,111,10,77,97,115,32,97,113,117,101,108,101,32)..safadeza..string.char(37,32,195,169,32,118,97,103,97,98,117,110,100,111,10,77,97,115,32,97,113,117,101,108,101,32)..safadeza..string.char(37,32,195,169,32,118,97,103,97,98,117,110,100,111,10,83,97,102,97,100,111,32,101,32,101,108,97,115,32,103,111,115,116,97,109).."[...]\"")
					else
						error("Bug !3. Reporte ao criador")
					end
				else
					error("Bug !2. Reporte ao criador")
				end
			else
				error("Bug !1. Reporte ao criador")
			end
		else
			error("Ninguém pode ter nascido em "..birthday.." ainda. Desculpe, mas você não pode enganar um algoritmo.")
		end		
	end
end


wesley_safadao("01/01/1995") --Sua data de nascimento.

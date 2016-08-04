def word_sorting(oracion) 
	oracion_array = oracion.split(/\W+/)
	oracion_array.sort! do |a, b|
		a.capitalize <=> b.upcase
	end
end



 print word_sorting("A Veces, es dificil.")
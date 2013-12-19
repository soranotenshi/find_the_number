solution = rand(100)
win = false
max_try = 6
try_count = 1
while (!(win) && (try_count <= max_try))
	puts "Proposition : "
	proposition = gets
	if (Integer(proposition) rescue false)
		if Integer(proposition) < solution
			puts "C'est plus !"
			try_count += 1
		elsif Integer(proposition) > solution
			puts "C'est moins !"
			try_count += 1
		else
			win = true
		end
	else
		puts "'" + proposition.chomp + "'" + " n'est pas un entier."
	end
end
puts win ? "Vous avez gagné !" : "Vous avez perdu ! La réponse était : " + solution.to_s
#git test3
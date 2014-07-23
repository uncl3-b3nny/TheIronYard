def check_win char1, char2
	if char1[:health] > 0
		puts char1[:name] + "wins"
	else
		puts char2[:name] + "wins"
	end
end

a = [[2,3],[4,5],[6,7]]

a.each do |element|
	puts element.inspect
	end

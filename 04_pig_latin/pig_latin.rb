#write your code here

# Translates a string into pig latin
def translate words
	array = words.split 
	i = 0
	total = ""
	while i < array.length
		string = array[i]
		if string[0] =~ /[aeiou]/
			result = string + "ay"
		else
			letters = ""
			counter = 0
			numberConsanants = 0
			while counter < string.length
				if string[counter] =~ /[aeiou]/
					break
				else
					letters = letters + string[counter]
					if string[counter] == 'q' && string[counter+1] == 'u'
						letters = letters + 'u'
						numberConsanants = numberConsanants + 1
					end
					numberConsanants = numberConsanants + 1
				end
				counter = counter + 1
			end
			result = string.slice(numberConsanants, string.length) + letters + "ay"
		end
		total = total + result
		if i != array.length - 1
			total = total + " "
		end
		i = i + 1
	end
	total
end
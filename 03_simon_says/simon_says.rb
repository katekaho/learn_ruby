#write your code here

# echoes string
def echo string
	string
end

# returns string capitalized
def shout string
	string.upcase
end

# repeats string specified number of times
# repeats string twice by default if no number specified
def repeat(string="", number=2)
	repeated = string + " " + string
	if number > 2
		counter = 2
		while counter < number
			repeated = repeated + " " + string
			counter = counter + 1
		end
	end
	repeated
end

# returns specified number of letters
def start_of_word(string, number)
	total = ""
	counter = 0
	while counter < number
		total = total + string[counter]
		counter = counter + 1
	end
	total
end

# returns the first word in the string
def first_word string
	total = ""
	counter = 0
	while counter < string.length
		if string[counter] == " "
			break
		end
		total = total + string[counter]
		counter = counter + 1
	end
	total
end

# Makes a string a title by capitalizing correct words
def titleize string
	words = string.split
	counter = 0
	result = ""
	while counter < words.length
		currentWord = words[counter].capitalize
		# Convert to lowercase if is not the first word and is a little word
		if counter != 0
			if (currentWord.downcase == "and" || 
			    currentWord.downcase == "the" ||
			    currentWord.downcase == "over")
				currentWord = words[counter].downcase
			end
		end
		result = result + currentWord
		# Add space if not on last word
		if counter < words.length-1
			result = result + " "
		end
		counter = counter + 1
	end
	result
end
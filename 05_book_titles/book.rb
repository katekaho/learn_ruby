class Book
# Titlizes a title
	attr_accessor :title
	def title
		result = ""
		words = @title.split
		counter = 0
		while counter < words.length
			forbidden = ["a", "an", "for", "and", "nor", "but", "or", 
				     "yet", "so", "at", "by", "down", "for", "in", 
				     "into", "like", "near", "of", "off", "on", "onto", 
				     "over", "past", "to", "the", "upon", "with"]
			currentWord = words[counter].capitalize
			if (forbidden.include? currentWord.downcase) && (counter != 0)
				currentWord = currentWord.downcase
			end
			result = result + currentWord
			if counter != words.length - 1
				result = result + " "
			end
			counter = counter + 1
		end
		result
	end
end

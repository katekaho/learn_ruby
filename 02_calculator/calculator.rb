#write your code here

# Adds two numbers
def add a, b
	a + b
end

# Subtracts second number from the first
def subtract a, b
	a - b
end

# Takes the sum of the elements in the array
def sum array
	sum = 0
	array.each do |number|
		sum = sum + number
	end
	sum
end

# Multiplies numbers, can put in as many as you want
def multiply a, b, *array
	total = a * b
	remaining = array.length
	i = 0
	while i < remaining
		total = total * array[i]
		i = i + 1
	end
	total
end

# Raises first number to the power of the second
def power a, b
	total = a
	while b > 1
		total = total * a
		b = b - 1
	end
	total
end

# Computes the factorial of any number
def factorial a
	if a == 0
		return 1
	end
	total = a
	while a > 1
		a = a - 1
		total = total * a
	end
	total
end

#write your code here

# Converts fahrenheit to celcius
def ftoc fahrenheit
	(fahrenheit.to_f-32)*(5.0/9.0)
end

# Converts celcius to fahrenheit
def ctof celcius
	celcius.to_f*(9.0/5.0)+32
end
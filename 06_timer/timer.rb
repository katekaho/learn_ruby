class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
  	@seconds = 0
  end

  def seconds
  	@seconds
  end

  def time_string
  	minutes = @seconds/60
  	hours = minutes/60
  	seconds = @seconds - minutes*60
  	minutes = minutes % 60
  	padded(hours) +":"+ padded(minutes) +":"+ padded(seconds)
  end

  def padded(number)
  	if number > 9
  		return number.to_s
  	else
  		return "0" + number.to_s
  	end
  end
end
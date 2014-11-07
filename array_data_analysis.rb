class ArrayDataAnalysis

  def initialize(data)
    @data = data
  end

  def data
    @data
  end

  def lowest_temperature
    data.map{|array| array[2]}.min
  end

  def highest_temperature
    data.map{|array| array[1]}.max
  end

  def day_of_lowest_temperature
    low = lowest_temperature
    day_low = data.select {|set| set.include?(low)}
    day_low[0][0]
  end

  def day_of_highest_temperature
    high = highest_temperature
    day_high = data.select {|set| set.include?(high)}
    day_high[0][0]
  end

  def average_temperatures
    data.map {|set| (set[1] + set[2])/2.0}
  end



end

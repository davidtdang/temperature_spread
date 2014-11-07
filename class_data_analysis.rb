class ClassDataAnalysis
  def initialize(data)
    @data = data
  end

  def data
    @data
  end

  def low
    self.low
  end

  def lowest_temperature
    data.map{|set| set.low}.min
  end

  def highest_temperature
    data.map{|set| set.high}.max
  end

  def day_of_lowest_temperature
    low = lowest_temperature
    data.select {|set| set.low == low}.first.day
  end

  def day_of_highest_temperature
    high = highest_temperature
    data.select {|set| set.high == high}.first.day
  end

  def average_temperatures
    data.map {|set| (set.high + set.low)/2.0}
  end

end

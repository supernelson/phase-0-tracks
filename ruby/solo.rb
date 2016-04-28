#class of Big Technology Companies
class TechCompanies
  #attributes include: age=>integer / salary=>hash / location=>string
  #reader includes website
  attr_accessor :age, :salary, :location
  attr_reader :website

#method to initialize the characteristics
  def initialize
    @age = age
    @salary = salary
    @location = location
  end

#method to track behavior of stock price
  def stock(movement)
  end

#method to track behavior of media news
  def news(intensity)
  end

#method to track tech trends
  def trends
  end
end
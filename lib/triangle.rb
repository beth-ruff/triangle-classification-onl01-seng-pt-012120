class Triangle
  
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind 
    if (@side1 + @side2 != @side3) || (@side1 <= 0) || (@side2 <= 0) || (@side3 <= 0)
      begin 
        raise TriangleError 
          puts error.message
      end
          puts 
    if (@side1 == @side2) && (@side2 == @side3)
      :equilateral
    elsif (@side1 == @side2) || (@side2 == @side3) || (@side1 == @side3)
      :isosceles 
    else (@side1 != @side2) && (@side2 != @side3)
      :scalene 
    end 
  end 
  
  class TriangleError < StandardError
  end 
  
end

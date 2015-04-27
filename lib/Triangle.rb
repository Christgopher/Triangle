class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @triangle_array = []
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @triangle_array.push(@side1, @side2, @side3)
    @triangle_array.sort!()
  end

  define_method(:triangle?) do
    side_sum = @triangle_array.at(0).+(@triangle_array.at(1))
    if @triangle_array.at(2).<(side_sum)
      true
    else
      false
    end
  end

  define_method(:triangle_type) do
      if @side1.==(@side2) && @side2.==(@side3)
        "Equilateral"
      end
    end
end

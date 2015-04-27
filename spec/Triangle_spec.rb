require('rspec')
require('Triangle')

describe(Triangle) do
  describe("#triangle?") do
    it("returns false if not a triangle") do
      test_triangle = Triangle.new(2, 2, 8)
      expect(test_triangle.triangle?()).to(eq(false))
    end

    it("returns true if a triangle") do
      test_triangle = Triangle.new(2, 3, 4)
      expect(test_triangle.triangle?()).to(eq(true))
    end
  end
  describe("#triangle_type") do
    it("returns if equilateral") do
      test_triangle = Triangle.new(2, 2, 2)
      expect(test_triangle.triangle_type()).to(eq("Equilateral"))
    end
  end
end

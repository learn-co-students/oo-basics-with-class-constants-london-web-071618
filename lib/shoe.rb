require 'pry'
class Shoe
  attr_accessor :color, :size, :material, :condition, :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if BRANDS.find {|x| x==@brand } == nil
      BRANDS.push(@brand)
    end
  end


  def brand=(new_brand)
    @brand = new_brand
    if BRANDS.find {|x| x==new_brand } == nil

      BRANDS.push(brand)
    end
  end

  def brand
    @brand
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def self.brands
    BRANDS
  end
end
#
#
# shoe1 = Shoe.new("adidas")
# shoe2 = Shoe.new("nike")
# shoe3 = Shoe.new("sup")
# shoe4 = Shoe.new("adidas")
# binding.pry

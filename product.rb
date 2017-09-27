# require './shopping-cart.rb'
class Products

  def initialize(name, base_price)
    @name = name
    @base_price = base_price
    @tax_rate = 0.13
  end

  def name
    @name
  end

  def base_price
    @base_price
  end

  def tax_rate
    @tax_rate
  end

  def name=(name)
    @name = name
  end

  def base_price=(base_price)
    @base_price = base_price
  end

  def tax_rate=(tax_rate)
    @tax_rate = tax_rate
  end

  def total_price
    total_price = base_price + (base_price * tax_rate)
  end

end

soap = Products.new("Soap", 10)
puts soap.total_price

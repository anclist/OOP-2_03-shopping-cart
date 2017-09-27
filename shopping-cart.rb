require './product.rb'
class ShoppingCart
  @@shoping_cart = []

  def self.shoping_cart
    @@shoping_cart
  end

  def self.shoping_cart=(shoping_cart)
    @@shoping_cart = shoping_cart
  end

  def self.add_product(name, base_price)
    new_product = Products.new(name, base_price)
    @@shoping_cart << new_product
  end

  def self.remove_product(product_to_remove)
    @@shoping_cart.each do |product|
      if product.name == product_to_remove
        @@shoping_cart.delete(product)
      end
    end
  end

  def self.total_cart_before_tax
    total_before_tax = 0
    @@shoping_cart.each do |price|
      total_before_tax += price.base_price
    end
    total_before_tax
  end

  def self.total_cart_after_tax
    total_after_tax = 0
    @@shoping_cart.each do |price|
      total_after_tax += price.total_price
    end
    total_after_tax.round(2)
  end

end

ShoppingCart.add_product("soap", 5.5)
ShoppingCart.add_product("shampoo", 7)
ShoppingCart.add_product("razor", 3.25)
ShoppingCart.add_product("tooth brush", 4.35)
ShoppingCart.add_product("deodorant", 4.60)

p ShoppingCart.shoping_cart
p "-----------------"
ShoppingCart.remove_product("soap")
p ShoppingCart.shoping_cart
p "Your total before tax is: #{ShoppingCart.total_cart_before_tax}"
p "Your total after tax is: #{ShoppingCart.total_cart_after_tax}"

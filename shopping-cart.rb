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

end

ShoppingCart.add_product("soap", 5.5)
ShoppingCart.add_product("shampoo", 7)
ShoppingCart.add_product("razor", 3.25)
p ShoppingCart.shoping_cart
p "-----------------"
ShoppingCart.remove_product("soap")
p ShoppingCart.shoping_cart

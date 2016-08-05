require "Date"
#----------------------------------
# Clase Carrito de compra - Objeto
#----------------------------------
class ShoppingCart
	def initialize
		@items = []
	end

	def add_item(item)
		@items.push(item)
	end

	def checkout
		total = 0
		@items.each do |item|
			total += item.price
		end	
		if(@items.length >= 5)
			total -= total*0.10
		end	
		puts "The total is: #{total}"
		 # total	
	end
end

#----------------------------------
# Clase Items - Objeto
#----------------------------------
class Item
	attr_reader :name, :reg_price
	def initialize(name, reg_price)
		@name = name
		@reg_price = reg_price		
	end

	def price
	 	# puts "El precio es: #{price}$"	
		price = @reg_price	
	end
end

class Houseware < Item
	def price
		price = @reg_price
		if price >= 100
			puts "You will get a 5% off"
			price -= price*0.05
		end
		puts "The price is: #{price}$"
		price
	end
end

class Fruit < Item
	def price
		price = @reg_price
		dia = Date.today.wday
		if dia == 0 || dia == 6
			puts "You have a 10% off"
			price -= price*0.10
		end
		puts "The price is: #{price.to_i}$"
		price
	end
end

# shop = ShoppingCart.new
# banana = Fruit.new("Banana", 10)
# orangej = Fruit.new("Orangej", 10)
# rice = Fruit.new("Rice", 1)
# vc = Houseware.new("Vaccum Cleaner", 150)
# anchovies = Fruit.new("Anchovies", 2)

joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)


# puts banana.price
# puts oj.price
# puts rice.price
# puts vaccuum.price
# puts anchovies.price	

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
puts joshs_cart.checkout

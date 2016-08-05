#---------------------------------
# => Clase Milkshake - OBJETO
#---------------------------------

class Milkshake
	def initialize
		@base_price = 3
		@ingredients = []
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end

	def price_of_milkshake
		total_price = @base_price
		@ingredients.each do |ingredient|
			total_price += ingredient.price
		end
		total_price
	end
end

#---------------------------------
# => Clase ingrediente - OBJETO
#---------------------------------

class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price		
	end
end

#---------------------------------
# => Clase Shop - OBJETO
#---------------------------------

class Shop
	# attr_reader :items
	def initialize
		@items = []
	end

	def add_list(item)
		@items.push(item)
	end

	def checkout
		total_price=0
		@items.each do |milkshake|
			total_price += milkshake.price_of_milkshake
		end
		puts "The total price is: #{total_price}$"
	end
end


nizars_milkshake = Milkshake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("chocolate_chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

shop = Shop.new
shop.add_list(nizars_milkshake)

# puts shop.checkout

# puts nizars_milkshake.price_of_milkshake
puts shop.checkout
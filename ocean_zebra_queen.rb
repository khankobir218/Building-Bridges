# Building Bridges in Ruby

# Creating a Bridge Class

class Bridge
  # Setting up the bridge's initial values
  def initialize(length, width, materials)
    @length = length
    @width = width
    @materials = materials
  end

  # Setting up a method for the bridge's length
  def length
    @length
  end

  # Setting up a method for the bridge's width
  def width
    @width
  end

  # Setting up a method for the bridge's materials
  def materials
    @materials
  end

  # Setting up a method to calculate the bridge's area
  def area
    @length * @width
  end

  # Setting up a method to calculate the bridge's total cost
  def total_cost
    @length * @width * @materials.cost
  end
end

# Creating a Materials Class
class Materials
  # Setting up the materials' initial values
  def initialize(cost, type)
    @cost = cost
    @type = type
  end

  # Setting up a method for the materials' cost
  def cost
    @cost
  end

  # Setting up a method for the materials' type
  def type
    @type
  end

end

# Creating the Bridges

# Creating the first bridge
bridge_1 = Bridge.new(50, 10, Materials.new(30, "concrete"))

# Creating the second bridge
bridge_2 = Bridge.new(100, 15, Materials.new(50, "wood"))

# Creating the third bridge
bridge_3 = Bridge.new(20, 20, Materials.new(75, "steel"))

# Displaying the Bridges' Information

# Displaying the bridge's information for bridge 1
puts "Bridge 1: Length - #{bridge_1.length}, Width - #{bridge_1.width}, and Materials - #{bridge_1.materials.type}."

# Displaying the bridge's area for bridge 1
puts "The area of bridge 1 is #{bridge_1.area}."

# Displaying the bridge's total cost for bridge 1
puts "The total cost for bridge 1 is #{bridge_1.total_cost}."

# Displaying the bridge's information for bridge 2
puts "Bridge 2: Length - #{bridge_2.length}, Width - #{bridge_2.width}, and Materials - #{bridge_2.materials.type}."

# Displaying the bridge's area for bridge 2
puts "The area of bridge 2 is #{bridge_2.area}."

# Displaying the bridge's total cost for bridge 2
puts "The total cost for bridge 2 is #{bridge_2.total_cost}."

# Displaying the bridge's information for bridge 3
puts "Bridge 3: Length - #{bridge_3.length}, Width - #{bridge_3.width}, and Materials - #{bridge_3.materials.type}."

# Displaying the bridge's area for bridge 3
puts "The area of bridge 3 is #{bridge_3.area}."

# Displaying the bridge's total cost for bridge 3
puts "The total cost for bridge 3 is #{bridge_3.total_cost}."
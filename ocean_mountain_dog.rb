#Building Bridges

#Creating a Bridge class with an initialize method
class Bridge
  attr_accessor :name, :description, :material

  def initialize(name, description, material)
    @name = name
    @description = description
    @material = material
  end
end

#Building a new instance of a Bridge object called Golden Gate Bridge
golden_gate_bridge = Bridge.new("Golden Gate Bridge", "The famous suspension bridge connecting the San Francisco-Oakland Bay Area", "Steel")

#Creating a method to print out bridge information
def bridge_info(bridge)
  puts "The #{bridge.name} is a #{bridge.description} constructed from #{bridge.material}."
end

#Calling the bridge info method 
bridge_info(golden_gate_bridge)

#Creating a method to check bridge strength
def bridge_strength(bridge)
  puts "The #{bridge.name} is extremely strong and can hold up to 270,000 tons of traffic!"
end

#Calling the bridge strength method 
bridge_strength(golden_gate_bridge)

#Creating a Bridge Builder class
class Bridge_Builder
  attr_accessor :name, :description, :location 

  def initialize(name, description, location)
    @name = name
    @description = description
    @location = location
  end 
end

#Creates a new instance of a Bridge_Builder object called National Bridge Builders
national_bridge_builders = Bridge_Builder.new("National Bridge Builders", "A professional organization of bridge builders, engineers, and architects", "Washington, D.C.")

#Creates a method to print out bridge builder info
def bridge_builder_info(bridge_builders)
  puts "#{bridge_builders.name} is #{bridge_builders.description} located in #{bridge_builders.location}."
end

#Calling the bridge builder info method 
bridge_builder_info(national_bridge_builders)

#Creating a method to check bridge builder safety
def bridge_builder_safety(bridge_builders)
  puts "#{bridge_builders.name} takes pride in constructing bridges that meet the highest safety standards."
end

#Calling the bridge builder safety method 
bridge_builder_safety(national_bridge_builders)

#Creating a new instance of a Bridge object called Brooklyn Bridge 
brooklyn_bridge = Bridge.new("Brooklyn Bridge", "The iconic suspension bridge connecting Manhattan and Brooklyn", "Steel")

#Calling the bridge info method 
bridge_info(brooklyn_bridge)

#Creating a method to check bridge length
def bridge_length(bridge)
  puts "The #{bridge.name} stretches for 5,989 feet!"
end

#Calling the bridge length method 
bridge_length(brooklyn_bridge)

#Creating a new instance of a Bridge_Builder object called Regional Bridge Builders
regional_bridge_builders = Bridge_Builder.new("Regional Bridge Builders", "A local organization of bridge builders, engineers, and architects", "New York City")

#Calling the bridge builder info method 
bridge_builder_info(regional_bridge_builders)

#Creating a method to check bridge builder experience
def bridge_builder_experience(bridge_builders)
  puts "#{bridge_builders.name} has extensive experience building bridges in the area."
end

#Calling the bridge builder experience method 
bridge_builder_experience(regional_bridge_builders)

#Creating a new instance of a Bridge object called Chesapeake Bay Bridge 
chesapeake_bay_bridge = Bridge.new("Chesapeake Bay Bridge", "The long-spanning bridge connecting Maryland's Eastern and Western shores", "Steel")

#Calling the bridge info method 
bridge_info(chesapeake_bay_bridge)

#Creating a method to check bridge height
def bridge_height(bridge)
  puts "The #{bridge.name} is a staggering 186 feet tall!"
end

#Calling the bridge height method 
bridge_height(chesapeake_bay_bridge)

#Creating a new instance of a Bridge_Builder object called Local Bridge Builders
local_bridge_builders = Bridge_Builder.new("Local Bridge Builders", "A small organization of bridge builders, engineers, and architects", "Maryland")

#Calling the bridge builder info method 
bridge_builder_info(local_bridge_builders)

#Creating a method to check bridge builder quality
def bridge_builder_quality(bridge_builders)
  puts "#{bridge_builders.name} guarantee quality construction of all bridges."
end

#Calling the bridge builder quality method 
bridge_builder_quality(local_bridge_builders)

#Creating a new instance of a Bridge object called Mackinac Bridge 
mackinac_bridge = Bridge.new("Mackinac Bridge", "The longest suspension bridge between two states connecting Michigan's Upper and Lower peninsulas", "Steel")

#Calling the bridge info method 
bridge_info(mackinac_bridge)

#Creating a method to check bridge weight
def bridge_weight(bridge)
  puts "The #{bridge.name} weighs an impressive 887,000 tons!"
end

#Calling the bridge weight method 
bridge_weight(mackinac_bridge)

#Creating a new instance of a Bridge_Builder object called National Bridge Builders
national_bridge_builders = Bridge_Builder.new("National Bridge Builders", "A professional organization of bridge builders, engineers, and architects", "Washington, D.C.")

#Calling the bridge builder info method 
bridge_builder_info(national_bridge_builders)

#Creating a method to check bridge builder technology
def bridge_builder_technology(bridge_builders)
  puts "#{bridge_builders.name} is always exploring innovative ways to design bridges that will last."
end

#Calling the bridge builder technology method 
bridge_builder_technology(national_bridge_builders)
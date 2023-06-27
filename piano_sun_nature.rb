# Building Bridges in Ruby

# Define a Bridge class
class Bridge
  attr_reader :name, :length, :width, :construction_year

  def initialize(name, length, width, construction_year)
    @name = name
    @length = length
    @width = width
    @construction_year = construction_year
  end
end

# Define a Bridge Builder class
class BridgeBuilder
  attr_reader :bridges

  def initialize
    @bridges = []
  end

  def build_bridge(name, length, width, construction_year)
    bridge = Bridge.new(name, length, width, construction_year)
    @bridges << bridge
  end
end

# Define a Bridge Repairer class
class BridgeRepairer
  attr_reader :bridges

  def initialize
    @bridges = []
  end

  def repair_bridge(name, length, width, construction_year)
    bridge = Bridge.new(name, length, width, construction_year)
    @bridges << bridge
  end
end

# Define a Bridge Inspector class
class BridgeInspector
  attr_reader :bridges

  def initialize
    @bridges = []
  end

  def inspect_bridge(name, length, width, construction_year)
    bridge = Bridge.new(name, length, width, construction_year)
    @bridges << bridge
  end
end

# Define a Bridge Painter class
class BridgePainter
  attr_reader :bridges

  def initialize
    @bridges = []
  end

  def paint_bridge(name, length, width, construction_year)
    bridge = Bridge.new(name, length, width, construction_year)
    @bridges << bridge
  end
end

# Define a Bridge Manager class
class BridgeManager
  attr_reader :bridges

  def initialize
    @bridges = []
    @bridge_builders = []
    @bridge_repairers = []
    @bridge_inspectors = []
    @bridge_painters = []
  end

  def hire_bridge_builder(bridge_builder)
    @bridge_builders << bridge_builder
  end

  def hire_bridge_repairer(bridge_repairer)
    @bridge_repairers << bridge_repairer
  end

  def hire_bridge_inspector(bridge_inspector)
    @bridge_inspectors << bridge_inspector
  end

  def hire_bridge_painter(bridge_painter)
    @bridge_painters << bridge_painter
  end

  def build_bridge(name, length, width, construction_year)
    @bridge_builders.each do |builder|
      builder.build_bridge(name, length, width, construction_year)
    end
  end

  def repair_bridge(name, length, width, construction_year)
    @bridge_repairers.each do |repairer|
      repairer.repair_bridge(name, length, width, construction_year)
    end
  end

  def inspect_bridge(name, length, width, construction_year)
    @bridge_inspectors.each do |inspector|
      inspector.inspect_bridge(name, length, width, construction_year)
    end
  end

  def paint_bridge(name, length, width, construction_year)
    @bridge_painters.each do |painter|
      painter.paint_bridge(name, length, width, construction_year)
    end
  end
end

# Create the Bridge Manager
bridge_manager = BridgeManager.new

# Create the Bridge Builders
builder_1 = BridgeBuilder.new
builder_2 = BridgeBuilder.new

# Create the Bridge Repairers
repairer_1 = BridgeRepairer.new
repairer_2 = BridgeRepairer.new

# Create the Bridge Inspectors
inspector_1 = BridgeInspector.new
inspector_2 = BridgeInspector.new

# Create the Bridge Painters
painter_1 = BridgePainter.new
painter_2 = BridgePainter.new

# Hire the Bridge Builders to the Bridge Manager
bridge_manager.hire_bridge_builder(builder_1)
bridge_manager.hire_bridge_builder(builder_2)

# Hire the Bridge Repairers to the Bridge Manager
bridge_manager.hire_bridge_repairer(repairer_1)
bridge_manager.hire_bridge_repairer(repairer_2)

# Hire the Bridge Inspectors to the Bridge Manager
bridge_manager.hire_bridge_inspector(inspector_1)
bridge_manager.hire_bridge_inspector(inspector_2)

# Hire the Bridge Painters to the Bridge Manager
bridge_manager.hire_bridge_painter(painter_1)
bridge_manager.hire_bridge_painter(painter_2)

# Build the bridge
bridge_manager.build_bridge('Golden Gate Bridge', 88340, 125, 1937)

# Repair the bridge
bridge_manager.repair_bridge('Brooklyn Bridge', 137426, 85, 1883)

# Inspect the bridge
bridge_manager.inspect_bridge('Tower Bridge', 1164, 43, 1894)

# Paint the bridge
bridge_manager.paint_bridge('Akashi Kaikyo Bridge', 3911, 118, 1998)
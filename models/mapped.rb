class Mapped
  attr_accessor :minimum_order, :name, :_available_modifiers, :maximum_order, :category_id, :description

  # :internal => :external
  def self.attribute_map
  {
      :minimum_order => :minimum_order, :name => :name, :_available_modifiers => :AvailableModifiers, :maximum_order => :maximum_order, :category_id => :category_id, :description => :description

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Mapped.attribute_map["minimum_order".to_sym] != nil
        name = "minimum_order".to_sym
        value = attributes["minimum_order"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Mapped.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Mapped.attribute_map["_available_modifiers".to_sym] != nil
        name = "_available_modifiers".to_sym
        value = attributes["AvailableModifiers"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push Availablemodifier.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if Mapped.attribute_map["maximum_order".to_sym] != nil
        name = "maximum_order".to_sym
        value = attributes["maximum_order"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Mapped.attribute_map["category_id".to_sym] != nil
        name = "category_id".to_sym
        value = attributes["category_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Mapped.attribute_map["description".to_sym] != nil
        name = "description".to_sym
        value = attributes["description"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Mapped.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


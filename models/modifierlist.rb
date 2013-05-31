class ModifierList
  attr_accessor :price, :name, :modifier_id, :description

  # :internal => :external
  def self.attribute_map
  {
      :price => :price, :name => :name, :modifier_id => :modifier_id, :description => :description

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ModifierList.attribute_map["price".to_sym] != nil
        name = "price".to_sym
        value = attributes["price"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ModifierList.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ModifierList.attribute_map["modifier_id".to_sym] != nil
        name = "modifier_id".to_sym
        value = attributes["modifier_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ModifierList.attribute_map["description".to_sym] != nil
        name = "description".to_sym
        value = attributes["description"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ModifierList.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


class Availablemodifier
  attr_accessor :name, :date_updated, :price, :available_to_order, :modifier_id, :description

  # :internal => :external
  def self.attribute_map
  {
      :name => :name, :date_updated => :date_updated, :price => :price, :available_to_order => :available_to_order, :modifier_id => :modifier_id, :description => :description

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Availablemodifier.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Availablemodifier.attribute_map["date_updated".to_sym] != nil
        name = "date_updated".to_sym
        value = attributes["date_updated"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Availablemodifier.attribute_map["price".to_sym] != nil
        name = "price".to_sym
        value = attributes["price"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Availablemodifier.attribute_map["available_to_order".to_sym] != nil
        name = "available_to_order".to_sym
        value = attributes["available_to_order"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Availablemodifier.attribute_map["modifier_id".to_sym] != nil
        name = "modifier_id".to_sym
        value = attributes["modifier_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Availablemodifier.attribute_map["description".to_sym] != nil
        name = "description".to_sym
        value = attributes["description"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Availablemodifier.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


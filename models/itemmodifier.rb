class ItemModifier
  attr_accessor :name, :modifier_id, :instructions

  # :internal => :external
  def self.attribute_map
  {
      :name => :name, :modifier_id => :modifier_id, :instructions => :instructions

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ItemModifier.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ItemModifier.attribute_map["modifier_id".to_sym] != nil
        name = "modifier_id".to_sym
        value = attributes["modifier_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ItemModifier.attribute_map["instructions".to_sym] != nil
        name = "instructions".to_sym
        value = attributes["instructions"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ItemModifier.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


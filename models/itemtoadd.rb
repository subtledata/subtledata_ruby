class ItemToAdd
  attr_accessor :item_id, :instructions, :quantity

  # :internal => :external
  def self.attribute_map
  {
      :item_id => :item_id, :instructions => :instructions, :quantity => :quantity

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ItemToAdd.attribute_map["item_id".to_sym] != nil
        name = "item_id".to_sym
        value = attributes["item_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ItemToAdd.attribute_map["instructions".to_sym] != nil
        name = "instructions".to_sym
        value = attributes["instructions"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ItemToAdd.attribute_map["quantity".to_sym] != nil
        name = "quantity".to_sym
        value = attributes["quantity"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ItemToAdd.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


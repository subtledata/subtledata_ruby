class DiscountType
  attr_accessor :default_discount, :discount_type_id, :name

  # :internal => :external
  def self.attribute_map
  {
      :default_discount => :default_discount, :discount_type_id => :discount_type_id, :name => :name

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if DiscountType.attribute_map["default_discount".to_sym] != nil
        name = "default_discount".to_sym
        value = attributes["default_discount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DiscountType.attribute_map["discount_type_id".to_sym] != nil
        name = "discount_type_id".to_sym
        value = attributes["discount_type_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DiscountType.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    DiscountType.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


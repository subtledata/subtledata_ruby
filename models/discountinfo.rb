class DiscountInfo
  attr_accessor :discount_type, :user_id, :discount_amount

  # :internal => :external
  def self.attribute_map
  {
      :discount_type => :discount_type, :user_id => :user_id, :discount_amount => :discount_amount

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if DiscountInfo.attribute_map["discount_type".to_sym] != nil
        name = "discount_type".to_sym
        value = attributes["discount_type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DiscountInfo.attribute_map["user_id".to_sym] != nil
        name = "user_id".to_sym
        value = attributes["user_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DiscountInfo.attribute_map["discount_amount".to_sym] != nil
        name = "discount_amount".to_sym
        value = attributes["discount_amount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    DiscountInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


class Card
  attr_accessor :name_on_card, :card_type, :expiration_year, :card_id, :expiration_month, :nickname, :last_4_digits

  # :internal => :external
  def self.attribute_map
  {
      :name_on_card => :name_on_card, :card_type => :card_type, :expiration_year => :expiration_year, :card_id => :card_id, :expiration_month => :expiration_month, :nickname => :nickname, :last_4_digits => :last_4_digits

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Card.attribute_map["name_on_card".to_sym] != nil
        name = "name_on_card".to_sym
        value = attributes["name_on_card"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Card.attribute_map["card_type".to_sym] != nil
        name = "card_type".to_sym
        value = attributes["card_type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Card.attribute_map["expiration_year".to_sym] != nil
        name = "expiration_year".to_sym
        value = attributes["expiration_year"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Card.attribute_map["card_id".to_sym] != nil
        name = "card_id".to_sym
        value = attributes["card_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Card.attribute_map["expiration_month".to_sym] != nil
        name = "expiration_month".to_sym
        value = attributes["expiration_month"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Card.attribute_map["nickname".to_sym] != nil
        name = "nickname".to_sym
        value = attributes["nickname"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Card.attribute_map["last_4_digits".to_sym] != nil
        name = "last_4_digits".to_sym
        value = attributes["last_4_digits"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Card.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


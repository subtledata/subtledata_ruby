class NewPayment
  attr_accessor :tip_amount, :tip_type, :testing, :card_cvv, :card_id, :amount_before_tip, :user_id

  # :internal => :external
  def self.attribute_map
  {
      :tip_amount => :tip_amount, :tip_type => :tip_type, :testing => :testing, :card_cvv => :card_cvv, :card_id => :card_id, :amount_before_tip => :amount_before_tip, :user_id => :user_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if NewPayment.attribute_map["tip_amount".to_sym] != nil
        name = "tip_amount".to_sym
        value = attributes["tip_amount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewPayment.attribute_map["tip_type".to_sym] != nil
        name = "tip_type".to_sym
        value = attributes["tip_type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewPayment.attribute_map["testing".to_sym] != nil
        name = "testing".to_sym
        value = attributes["testing"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewPayment.attribute_map["card_cvv".to_sym] != nil
        name = "card_cvv".to_sym
        value = attributes["card_cvv"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewPayment.attribute_map["card_id".to_sym] != nil
        name = "card_id".to_sym
        value = attributes["card_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewPayment.attribute_map["amount_before_tip".to_sym] != nil
        name = "amount_before_tip".to_sym
        value = attributes["amount_before_tip"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewPayment.attribute_map["user_id".to_sym] != nil
        name = "user_id".to_sym
        value = attributes["user_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    NewPayment.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


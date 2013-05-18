class Payment
  attr_accessor :payment_id, :card_type, :tip_amount, :total_amount, :expiration_year, :card_nickname, :name_on_tender, :expiration_month, :amount_before_tip, :credit_card_id, :last_4_digits

  # :internal => :external
  def self.attribute_map
  {
      :payment_id => :payment_id, :card_type => :card_type, :tip_amount => :tip_amount, :total_amount => :total_amount, :expiration_year => :expiration_year, :card_nickname => :card_nickname, :name_on_tender => :name_on_tender, :expiration_month => :expiration_month, :amount_before_tip => :amount_before_tip, :credit_card_id => :credit_card_id, :last_4_digits => :last_4_digits

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Payment.attribute_map["payment_id".to_sym] != nil
        name = "payment_id".to_sym
        value = attributes["payment_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Payment.attribute_map["card_type".to_sym] != nil
        name = "card_type".to_sym
        value = attributes["card_type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Payment.attribute_map["tip_amount".to_sym] != nil
        name = "tip_amount".to_sym
        value = attributes["tip_amount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Payment.attribute_map["total_amount".to_sym] != nil
        name = "total_amount".to_sym
        value = attributes["total_amount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Payment.attribute_map["expiration_year".to_sym] != nil
        name = "expiration_year".to_sym
        value = attributes["expiration_year"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Payment.attribute_map["card_nickname".to_sym] != nil
        name = "card_nickname".to_sym
        value = attributes["card_nickname"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Payment.attribute_map["name_on_tender".to_sym] != nil
        name = "name_on_tender".to_sym
        value = attributes["name_on_tender"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Payment.attribute_map["expiration_month".to_sym] != nil
        name = "expiration_month".to_sym
        value = attributes["expiration_month"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Payment.attribute_map["amount_before_tip".to_sym] != nil
        name = "amount_before_tip".to_sym
        value = attributes["amount_before_tip"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Payment.attribute_map["credit_card_id".to_sym] != nil
        name = "credit_card_id".to_sym
        value = attributes["credit_card_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Payment.attribute_map["last_4_digits".to_sym] != nil
        name = "last_4_digits".to_sym
        value = attributes["last_4_digits"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Payment.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


class Tab
  attr_accessor :payment_id, :name_on_card, :card_type, :expiration_year, :card_nickname, :card_id, :expiration_month, :pos_ticket_id, :table_id, :ticket_id, :table_name, :pre_auth_amount, :last_4_digits

  # :internal => :external
  def self.attribute_map
  {
      :payment_id => :payment_id, :name_on_card => :name_on_card, :card_type => :card_type, :expiration_year => :expiration_year, :card_nickname => :card_nickname, :card_id => :card_id, :expiration_month => :expiration_month, :pos_ticket_id => :pos_ticket_id, :table_id => :table_id, :ticket_id => :ticket_id, :table_name => :table_name, :pre_auth_amount => :pre_auth_amount, :last_4_digits => :last_4_digits

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Tab.attribute_map["payment_id".to_sym] != nil
        name = "payment_id".to_sym
        value = attributes["payment_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Tab.attribute_map["name_on_card".to_sym] != nil
        name = "name_on_card".to_sym
        value = attributes["name_on_card"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Tab.attribute_map["card_type".to_sym] != nil
        name = "card_type".to_sym
        value = attributes["card_type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Tab.attribute_map["expiration_year".to_sym] != nil
        name = "expiration_year".to_sym
        value = attributes["expiration_year"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Tab.attribute_map["card_nickname".to_sym] != nil
        name = "card_nickname".to_sym
        value = attributes["card_nickname"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Tab.attribute_map["card_id".to_sym] != nil
        name = "card_id".to_sym
        value = attributes["card_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Tab.attribute_map["expiration_month".to_sym] != nil
        name = "expiration_month".to_sym
        value = attributes["expiration_month"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Tab.attribute_map["pos_ticket_id".to_sym] != nil
        name = "pos_ticket_id".to_sym
        value = attributes["pos_ticket_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Tab.attribute_map["table_id".to_sym] != nil
        name = "table_id".to_sym
        value = attributes["table_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Tab.attribute_map["ticket_id".to_sym] != nil
        name = "ticket_id".to_sym
        value = attributes["ticket_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Tab.attribute_map["table_name".to_sym] != nil
        name = "table_name".to_sym
        value = attributes["table_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Tab.attribute_map["pre_auth_amount".to_sym] != nil
        name = "pre_auth_amount".to_sym
        value = attributes["pre_auth_amount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Tab.attribute_map["last_4_digits".to_sym] != nil
        name = "last_4_digits".to_sym
        value = attributes["last_4_digits"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Tab.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


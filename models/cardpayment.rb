class CardPayment
  attr_accessor :name_on_card, :tip_amount, :expiration_year, :amount_before_tip, :tip_type, :card_id, :expiration_month, :mag_track_2, :mag_track_1, :signature_image, :tender_type_id, :billing_zip, :card_number

  # :internal => :external
  def self.attribute_map
  {
      :name_on_card => :name_on_card, :tip_amount => :tip_amount, :expiration_year => :expiration_year, :amount_before_tip => :amount_before_tip, :tip_type => :tip_type, :card_id => :card_id, :expiration_month => :expiration_month, :mag_track_2 => :mag_track_2, :mag_track_1 => :mag_track_1, :signature_image => :signature_image, :tender_type_id => :tender_type_id, :billing_zip => :billing_zip, :card_number => :card_number

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if CardPayment.attribute_map["name_on_card".to_sym] != nil
        name = "name_on_card".to_sym
        value = attributes["name_on_card"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CardPayment.attribute_map["tip_amount".to_sym] != nil
        name = "tip_amount".to_sym
        value = attributes["tip_amount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CardPayment.attribute_map["expiration_year".to_sym] != nil
        name = "expiration_year".to_sym
        value = attributes["expiration_year"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CardPayment.attribute_map["amount_before_tip".to_sym] != nil
        name = "amount_before_tip".to_sym
        value = attributes["amount_before_tip"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CardPayment.attribute_map["tip_type".to_sym] != nil
        name = "tip_type".to_sym
        value = attributes["tip_type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CardPayment.attribute_map["card_id".to_sym] != nil
        name = "card_id".to_sym
        value = attributes["card_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CardPayment.attribute_map["expiration_month".to_sym] != nil
        name = "expiration_month".to_sym
        value = attributes["expiration_month"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CardPayment.attribute_map["mag_track_2".to_sym] != nil
        name = "mag_track_2".to_sym
        value = attributes["mag_track_2"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CardPayment.attribute_map["mag_track_1".to_sym] != nil
        name = "mag_track_1".to_sym
        value = attributes["mag_track_1"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CardPayment.attribute_map["signature_image".to_sym] != nil
        name = "signature_image".to_sym
        value = attributes["signature_image"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CardPayment.attribute_map["tender_type_id".to_sym] != nil
        name = "tender_type_id".to_sym
        value = attributes["tender_type_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CardPayment.attribute_map["billing_zip".to_sym] != nil
        name = "billing_zip".to_sym
        value = attributes["billing_zip"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CardPayment.attribute_map["card_number".to_sym] != nil
        name = "card_number".to_sym
        value = attributes["card_number"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    CardPayment.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


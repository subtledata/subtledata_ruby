class NewCard
  attr_accessor :name_on_card, :expiration_year, :card_nickname, :billing_zip, :expiration_month, :mag_track_2, :mag_track_1, :signature_image, :card_number

  # :internal => :external
  def self.attribute_map
  {
      :name_on_card => :name_on_card, :expiration_year => :expiration_year, :card_nickname => :card_nickname, :billing_zip => :billing_zip, :expiration_month => :expiration_month, :mag_track_2 => :mag_track_2, :mag_track_1 => :mag_track_1, :signature_image => :signature_image, :card_number => :card_number

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if NewCard.attribute_map["name_on_card".to_sym] != nil
        name = "name_on_card".to_sym
        value = attributes["name_on_card"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewCard.attribute_map["expiration_year".to_sym] != nil
        name = "expiration_year".to_sym
        value = attributes["expiration_year"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewCard.attribute_map["card_nickname".to_sym] != nil
        name = "card_nickname".to_sym
        value = attributes["card_nickname"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewCard.attribute_map["billing_zip".to_sym] != nil
        name = "billing_zip".to_sym
        value = attributes["billing_zip"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewCard.attribute_map["expiration_month".to_sym] != nil
        name = "expiration_month".to_sym
        value = attributes["expiration_month"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewCard.attribute_map["mag_track_2".to_sym] != nil
        name = "mag_track_2".to_sym
        value = attributes["mag_track_2"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewCard.attribute_map["mag_track_1".to_sym] != nil
        name = "mag_track_1".to_sym
        value = attributes["mag_track_1"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewCard.attribute_map["signature_image".to_sym] != nil
        name = "signature_image".to_sym
        value = attributes["signature_image"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewCard.attribute_map["card_number".to_sym] != nil
        name = "card_number".to_sym
        value = attributes["card_number"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    NewCard.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


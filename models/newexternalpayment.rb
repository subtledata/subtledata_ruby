class NewExternalPayment
  attr_accessor :payment_source_name, :tip_amount, :payment_response_tracking_2, :payment_response_tracking_3, :payment_response_tracking_1, :payment_response_tracking_4, :amount_before_tip, :tender_type_id, :user_id, :device_id

  # :internal => :external
  def self.attribute_map
  {
      :payment_source_name => :payment_source_name, :tip_amount => :tip_amount, :payment_response_tracking_2 => :payment_response_tracking_2, :payment_response_tracking_3 => :payment_response_tracking_3, :payment_response_tracking_1 => :payment_response_tracking_1, :payment_response_tracking_4 => :payment_response_tracking_4, :amount_before_tip => :amount_before_tip, :tender_type_id => :tender_type_id, :user_id => :user_id, :device_id => :device_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if NewExternalPayment.attribute_map["payment_source_name".to_sym] != nil
        name = "payment_source_name".to_sym
        value = attributes["payment_source_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewExternalPayment.attribute_map["tip_amount".to_sym] != nil
        name = "tip_amount".to_sym
        value = attributes["tip_amount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewExternalPayment.attribute_map["payment_response_tracking_2".to_sym] != nil
        name = "payment_response_tracking_2".to_sym
        value = attributes["payment_response_tracking_2"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewExternalPayment.attribute_map["payment_response_tracking_3".to_sym] != nil
        name = "payment_response_tracking_3".to_sym
        value = attributes["payment_response_tracking_3"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewExternalPayment.attribute_map["payment_response_tracking_1".to_sym] != nil
        name = "payment_response_tracking_1".to_sym
        value = attributes["payment_response_tracking_1"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewExternalPayment.attribute_map["payment_response_tracking_4".to_sym] != nil
        name = "payment_response_tracking_4".to_sym
        value = attributes["payment_response_tracking_4"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewExternalPayment.attribute_map["amount_before_tip".to_sym] != nil
        name = "amount_before_tip".to_sym
        value = attributes["amount_before_tip"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewExternalPayment.attribute_map["tender_type_id".to_sym] != nil
        name = "tender_type_id".to_sym
        value = attributes["tender_type_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewExternalPayment.attribute_map["user_id".to_sym] != nil
        name = "user_id".to_sym
        value = attributes["user_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewExternalPayment.attribute_map["device_id".to_sym] != nil
        name = "device_id".to_sym
        value = attributes["device_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    NewExternalPayment.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


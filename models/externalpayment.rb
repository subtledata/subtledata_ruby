class ExternalPayment
  attr_accessor :status, :tip_amount, :total_amount, :amount_before_tip, :payment_source, :external_payment_id, :external_response_field_1, :tender_type_name, :external_response_field_2, :external_response_field_3, :external_response_field_4

  # :internal => :external
  def self.attribute_map
  {
      :status => :status, :tip_amount => :tip_amount, :total_amount => :total_amount, :amount_before_tip => :amount_before_tip, :payment_source => :payment_source, :external_payment_id => :external_payment_id, :external_response_field_1 => :external_response_field_1, :tender_type_name => :tender_type_name, :external_response_field_2 => :external_response_field_2, :external_response_field_3 => :external_response_field_3, :external_response_field_4 => :external_response_field_4

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ExternalPayment.attribute_map["status".to_sym] != nil
        name = "status".to_sym
        value = attributes["status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ExternalPayment.attribute_map["tip_amount".to_sym] != nil
        name = "tip_amount".to_sym
        value = attributes["tip_amount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ExternalPayment.attribute_map["total_amount".to_sym] != nil
        name = "total_amount".to_sym
        value = attributes["total_amount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ExternalPayment.attribute_map["amount_before_tip".to_sym] != nil
        name = "amount_before_tip".to_sym
        value = attributes["amount_before_tip"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ExternalPayment.attribute_map["payment_source".to_sym] != nil
        name = "payment_source".to_sym
        value = attributes["payment_source"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ExternalPayment.attribute_map["external_payment_id".to_sym] != nil
        name = "external_payment_id".to_sym
        value = attributes["external_payment_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ExternalPayment.attribute_map["external_response_field_1".to_sym] != nil
        name = "external_response_field_1".to_sym
        value = attributes["external_response_field_1"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ExternalPayment.attribute_map["tender_type_name".to_sym] != nil
        name = "tender_type_name".to_sym
        value = attributes["tender_type_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ExternalPayment.attribute_map["external_response_field_2".to_sym] != nil
        name = "external_response_field_2".to_sym
        value = attributes["external_response_field_2"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ExternalPayment.attribute_map["external_response_field_3".to_sym] != nil
        name = "external_response_field_3".to_sym
        value = attributes["external_response_field_3"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ExternalPayment.attribute_map["external_response_field_4".to_sym] != nil
        name = "external_response_field_4".to_sym
        value = attributes["external_response_field_4"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ExternalPayment.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


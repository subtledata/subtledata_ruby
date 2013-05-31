class ConcessionOrderResults
  attr_accessor :payment_success, :error, :ticket_id, :success, :result

  # :internal => :external
  def self.attribute_map
  {
      :payment_success => :payment_success, :error => :error, :ticket_id => :ticket_id, :success => :success, :result => :result

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ConcessionOrderResults.attribute_map["payment_success".to_sym] != nil
        name = "payment_success".to_sym
        value = attributes["payment_success"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConcessionOrderResults.attribute_map["error".to_sym] != nil
        name = "error".to_sym
        value = attributes["error"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConcessionOrderResults.attribute_map["ticket_id".to_sym] != nil
        name = "ticket_id".to_sym
        value = attributes["ticket_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConcessionOrderResults.attribute_map["success".to_sym] != nil
        name = "success".to_sym
        value = attributes["success"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConcessionOrderResults.attribute_map["result".to_sym] != nil
        name = "result".to_sym
        value = attributes["result"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ConcessionOrderResults.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


class ConcessionTicketDetails
  attr_accessor :employee_id, :user_id, :number_of_people_in_party, :ticket_notes, :items, :terminal_id, :table_id, :revenue_center_id, :card_payments, :device_id

  # :internal => :external
  def self.attribute_map
  {
      :employee_id => :employee_id, :user_id => :user_id, :number_of_people_in_party => :number_of_people_in_party, :ticket_notes => :ticket_notes, :items => :items, :terminal_id => :terminal_id, :table_id => :table_id, :revenue_center_id => :revenue_center_id, :card_payments => :card_payments, :device_id => :device_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ConcessionTicketDetails.attribute_map["employee_id".to_sym] != nil
        name = "employee_id".to_sym
        value = attributes["employee_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConcessionTicketDetails.attribute_map["user_id".to_sym] != nil
        name = "user_id".to_sym
        value = attributes["user_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConcessionTicketDetails.attribute_map["number_of_people_in_party".to_sym] != nil
        name = "number_of_people_in_party".to_sym
        value = attributes["number_of_people_in_party"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConcessionTicketDetails.attribute_map["ticket_notes".to_sym] != nil
        name = "ticket_notes".to_sym
        value = attributes["ticket_notes"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConcessionTicketDetails.attribute_map["items".to_sym] != nil
        name = "items".to_sym
        value = attributes["items"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push Item.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if ConcessionTicketDetails.attribute_map["terminal_id".to_sym] != nil
        name = "terminal_id".to_sym
        value = attributes["terminal_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConcessionTicketDetails.attribute_map["table_id".to_sym] != nil
        name = "table_id".to_sym
        value = attributes["table_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConcessionTicketDetails.attribute_map["revenue_center_id".to_sym] != nil
        name = "revenue_center_id".to_sym
        value = attributes["revenue_center_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConcessionTicketDetails.attribute_map["card_payments".to_sym] != nil
        name = "card_payments".to_sym
        value = attributes["card_payments"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push CardPayment.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if ConcessionTicketDetails.attribute_map["device_id".to_sym] != nil
        name = "device_id".to_sym
        value = attributes["device_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ConcessionTicketDetails.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


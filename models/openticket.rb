class OpenTicket
  attr_accessor :employee_id, :user_id, :number_of_guests, :items, :tax, :discount, :pos_ticket_id, :remaining_balance, :table_id, :ticket_id, :date_opened, :table_name, :total, :subtotal, :service_charge

  # :internal => :external
  def self.attribute_map
  {
      :employee_id => :employee_id, :user_id => :user_id, :number_of_guests => :number_of_guests, :items => :items, :tax => :tax, :discount => :discount, :pos_ticket_id => :pos_ticket_id, :remaining_balance => :remaining_balance, :table_id => :table_id, :ticket_id => :ticket_id, :date_opened => :date_opened, :table_name => :table_name, :total => :total, :subtotal => :subtotal, :service_charge => :service_charge

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if OpenTicket.attribute_map["employee_id".to_sym] != nil
        name = "employee_id".to_sym
        value = attributes["employee_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OpenTicket.attribute_map["user_id".to_sym] != nil
        name = "user_id".to_sym
        value = attributes["user_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OpenTicket.attribute_map["number_of_guests".to_sym] != nil
        name = "number_of_guests".to_sym
        value = attributes["number_of_guests"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OpenTicket.attribute_map["items".to_sym] != nil
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
      if OpenTicket.attribute_map["tax".to_sym] != nil
        name = "tax".to_sym
        value = attributes["tax"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OpenTicket.attribute_map["discount".to_sym] != nil
        name = "discount".to_sym
        value = attributes["discount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OpenTicket.attribute_map["pos_ticket_id".to_sym] != nil
        name = "pos_ticket_id".to_sym
        value = attributes["pos_ticket_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OpenTicket.attribute_map["remaining_balance".to_sym] != nil
        name = "remaining_balance".to_sym
        value = attributes["remaining_balance"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OpenTicket.attribute_map["table_id".to_sym] != nil
        name = "table_id".to_sym
        value = attributes["table_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OpenTicket.attribute_map["ticket_id".to_sym] != nil
        name = "ticket_id".to_sym
        value = attributes["ticket_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OpenTicket.attribute_map["date_opened".to_sym] != nil
        name = "date_opened".to_sym
        value = attributes["date_opened"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OpenTicket.attribute_map["table_name".to_sym] != nil
        name = "table_name".to_sym
        value = attributes["table_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OpenTicket.attribute_map["total".to_sym] != nil
        name = "total".to_sym
        value = attributes["total"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OpenTicket.attribute_map["subtotal".to_sym] != nil
        name = "subtotal".to_sym
        value = attributes["subtotal"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OpenTicket.attribute_map["service_charge".to_sym] != nil
        name = "service_charge".to_sym
        value = attributes["service_charge"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    OpenTicket.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


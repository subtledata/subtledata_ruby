class Ticket
  attr_accessor :date_closed, :tax, :date_opened, :total, :location_id, :employee_id, :ticket_open, :pre_auth_payments, :remaining_balance, :ticket_id, :table_name, :revenue_center_id, :user_id, :pre_auth_cards, :discount, :external_payments, :cover_count, :subtotal, :service_charge, :date_modified, :items, :pos_ticket_id, :table_id, :payments, :connected_users

  # :internal => :external
  def self.attribute_map
  {
      :date_closed => :date_closed, :tax => :tax, :date_opened => :date_opened, :total => :total, :location_id => :location_id, :employee_id => :employee_id, :ticket_open => :ticket_open, :pre_auth_payments => :pre_auth_payments, :remaining_balance => :remaining_balance, :ticket_id => :ticket_id, :table_name => :table_name, :revenue_center_id => :revenue_center_id, :user_id => :user_id, :pre_auth_cards => :pre_auth_cards, :discount => :discount, :external_payments => :external_payments, :cover_count => :cover_count, :subtotal => :subtotal, :service_charge => :service_charge, :date_modified => :date_modified, :items => :items, :pos_ticket_id => :pos_ticket_id, :table_id => :table_id, :payments => :payments, :connected_users => :connected_users

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Ticket.attribute_map["date_closed".to_sym] != nil
        name = "date_closed".to_sym
        value = attributes["date_closed"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["tax".to_sym] != nil
        name = "tax".to_sym
        value = attributes["tax"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["date_opened".to_sym] != nil
        name = "date_opened".to_sym
        value = attributes["date_opened"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["total".to_sym] != nil
        name = "total".to_sym
        value = attributes["total"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["location_id".to_sym] != nil
        name = "location_id".to_sym
        value = attributes["location_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["employee_id".to_sym] != nil
        name = "employee_id".to_sym
        value = attributes["employee_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["ticket_open".to_sym] != nil
        name = "ticket_open".to_sym
        value = attributes["ticket_open"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["pre_auth_payments".to_sym] != nil
        name = "pre_auth_payments".to_sym
        value = attributes["pre_auth_payments"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push PreAuthPayment.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if Ticket.attribute_map["remaining_balance".to_sym] != nil
        name = "remaining_balance".to_sym
        value = attributes["remaining_balance"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["ticket_id".to_sym] != nil
        name = "ticket_id".to_sym
        value = attributes["ticket_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["table_name".to_sym] != nil
        name = "table_name".to_sym
        value = attributes["table_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["revenue_center_id".to_sym] != nil
        name = "revenue_center_id".to_sym
        value = attributes["revenue_center_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["user_id".to_sym] != nil
        name = "user_id".to_sym
        value = attributes["user_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["pre_auth_cards".to_sym] != nil
        name = "pre_auth_cards".to_sym
        value = attributes["pre_auth_cards"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push PreAuthCard.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if Ticket.attribute_map["discount".to_sym] != nil
        name = "discount".to_sym
        value = attributes["discount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["external_payments".to_sym] != nil
        name = "external_payments".to_sym
        value = attributes["external_payments"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push ExternalPayment.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if Ticket.attribute_map["cover_count".to_sym] != nil
        name = "cover_count".to_sym
        value = attributes["cover_count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["subtotal".to_sym] != nil
        name = "subtotal".to_sym
        value = attributes["subtotal"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["service_charge".to_sym] != nil
        name = "service_charge".to_sym
        value = attributes["service_charge"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["date_modified".to_sym] != nil
        name = "date_modified".to_sym
        value = attributes["date_modified"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["items".to_sym] != nil
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
      if Ticket.attribute_map["pos_ticket_id".to_sym] != nil
        name = "pos_ticket_id".to_sym
        value = attributes["pos_ticket_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["table_id".to_sym] != nil
        name = "table_id".to_sym
        value = attributes["table_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Ticket.attribute_map["payments".to_sym] != nil
        name = "payments".to_sym
        value = attributes["payments"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push Payment.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if Ticket.attribute_map["connected_users".to_sym] != nil
        name = "connected_users".to_sym
        value = attributes["connected_users"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push ConnectedUser.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    Ticket.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


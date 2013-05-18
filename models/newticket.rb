class NewTicket
  attr_accessor :employee_id, :user_id, :number_of_people_in_party, :custom_ticket_name, :table_id, :revenue_center_id, :device_id

  # :internal => :external
  def self.attribute_map
  {
      :employee_id => :employee_id, :user_id => :user_id, :number_of_people_in_party => :number_of_people_in_party, :custom_ticket_name => :custom_ticket_name, :table_id => :table_id, :revenue_center_id => :revenue_center_id, :device_id => :device_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if NewTicket.attribute_map["employee_id".to_sym] != nil
        name = "employee_id".to_sym
        value = attributes["employee_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewTicket.attribute_map["user_id".to_sym] != nil
        name = "user_id".to_sym
        value = attributes["user_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewTicket.attribute_map["number_of_people_in_party".to_sym] != nil
        name = "number_of_people_in_party".to_sym
        value = attributes["number_of_people_in_party"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewTicket.attribute_map["custom_ticket_name".to_sym] != nil
        name = "custom_ticket_name".to_sym
        value = attributes["custom_ticket_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewTicket.attribute_map["table_id".to_sym] != nil
        name = "table_id".to_sym
        value = attributes["table_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewTicket.attribute_map["revenue_center_id".to_sym] != nil
        name = "revenue_center_id".to_sym
        value = attributes["revenue_center_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewTicket.attribute_map["device_id".to_sym] != nil
        name = "device_id".to_sym
        value = attributes["device_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    NewTicket.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


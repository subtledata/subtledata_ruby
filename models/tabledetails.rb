class TableDetails
  attr_accessor :pos_table_id, :subtledata_id, :revenue_center_name, :revenue_center_id, :open_tickets, :name

  # :internal => :external
  def self.attribute_map
  {
      :pos_table_id => :pos_table_id, :subtledata_id => :subtledata_id, :revenue_center_name => :revenue_center_name, :revenue_center_id => :revenue_center_id, :open_tickets => :open_tickets, :name => :name

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if TableDetails.attribute_map["pos_table_id".to_sym] != nil
        name = "pos_table_id".to_sym
        value = attributes["pos_table_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TableDetails.attribute_map["subtledata_id".to_sym] != nil
        name = "subtledata_id".to_sym
        value = attributes["subtledata_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TableDetails.attribute_map["revenue_center_name".to_sym] != nil
        name = "revenue_center_name".to_sym
        value = attributes["revenue_center_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TableDetails.attribute_map["revenue_center_id".to_sym] != nil
        name = "revenue_center_id".to_sym
        value = attributes["revenue_center_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TableDetails.attribute_map["open_tickets".to_sym] != nil
        name = "open_tickets".to_sym
        value = attributes["open_tickets"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push OpenTicket.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if TableDetails.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    TableDetails.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


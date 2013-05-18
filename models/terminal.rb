class Terminal
  attr_accessor :revenue_center_name, :default_device, :terminal_id, :revenue_center_id, :ip_address, :name

  # :internal => :external
  def self.attribute_map
  {
      :revenue_center_name => :revenue_center_name, :default_device => :default_device, :terminal_id => :terminal_id, :revenue_center_id => :revenue_center_id, :ip_address => :ip_address, :name => :name

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Terminal.attribute_map["revenue_center_name".to_sym] != nil
        name = "revenue_center_name".to_sym
        value = attributes["revenue_center_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Terminal.attribute_map["default_device".to_sym] != nil
        name = "default_device".to_sym
        value = attributes["default_device"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Terminal.attribute_map["terminal_id".to_sym] != nil
        name = "terminal_id".to_sym
        value = attributes["terminal_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Terminal.attribute_map["revenue_center_id".to_sym] != nil
        name = "revenue_center_id".to_sym
        value = attributes["revenue_center_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Terminal.attribute_map["ip_address".to_sym] != nil
        name = "ip_address".to_sym
        value = attributes["ip_address"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Terminal.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Terminal.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


class RevenueCenter
  attr_accessor :default_center, :revenue_center_id, :name

  # :internal => :external
  def self.attribute_map
  {
      :default_center => :default_center, :revenue_center_id => :revenue_center_id, :name => :name

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if RevenueCenter.attribute_map["default_center".to_sym] != nil
        name = "default_center".to_sym
        value = attributes["default_center"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if RevenueCenter.attribute_map["revenue_center_id".to_sym] != nil
        name = "revenue_center_id".to_sym
        value = attributes["revenue_center_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if RevenueCenter.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    RevenueCenter.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


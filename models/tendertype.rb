class TenderType
  attr_accessor :tender_type_id, :identifier, :name

  # :internal => :external
  def self.attribute_map
  {
      :tender_type_id => :tender_type_id, :identifier => :identifier, :name => :name

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if TenderType.attribute_map["tender_type_id".to_sym] != nil
        name = "tender_type_id".to_sym
        value = attributes["tender_type_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TenderType.attribute_map["identifier".to_sym] != nil
        name = "identifier".to_sym
        value = attributes["identifier"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TenderType.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    TenderType.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


class Country
  attr_accessor :country_name, :country_id

  # :internal => :external
  def self.attribute_map
  {
      :country_name => :country_name, :country_id => :country_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Country.attribute_map["country_name".to_sym] != nil
        name = "country_name".to_sym
        value = attributes["country_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Country.attribute_map["country_id".to_sym] != nil
        name = "country_id".to_sym
        value = attributes["country_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Country.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


class State
  attr_accessor :abbreviation, :state_id, :country_id

  # :internal => :external
  def self.attribute_map
  {
      :abbreviation => :abbreviation, :state_id => :state_id, :country_id => :country_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if State.attribute_map["abbreviation".to_sym] != nil
        name = "abbreviation".to_sym
        value = attributes["abbreviation"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if State.attribute_map["state_id".to_sym] != nil
        name = "state_id".to_sym
        value = attributes["state_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if State.attribute_map["country_id".to_sym] != nil
        name = "country_id".to_sym
        value = attributes["country_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    State.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


class NewConnection
  attr_accessor :latitude, :cover_number, :user_id, :longitude, :device_id

  # :internal => :external
  def self.attribute_map
  {
      :latitude => :latitude, :cover_number => :cover_number, :user_id => :user_id, :longitude => :longitude, :device_id => :device_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if NewConnection.attribute_map["latitude".to_sym] != nil
        name = "latitude".to_sym
        value = attributes["latitude"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewConnection.attribute_map["cover_number".to_sym] != nil
        name = "cover_number".to_sym
        value = attributes["cover_number"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewConnection.attribute_map["user_id".to_sym] != nil
        name = "user_id".to_sym
        value = attributes["user_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewConnection.attribute_map["longitude".to_sym] != nil
        name = "longitude".to_sym
        value = attributes["longitude"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewConnection.attribute_map["device_id".to_sym] != nil
        name = "device_id".to_sym
        value = attributes["device_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    NewConnection.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


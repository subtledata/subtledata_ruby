class AuthUserRequest
  attr_accessor :username, :user_id, :device_uuid, :longitude, :latitude, :password

  # :internal => :external
  def self.attribute_map
  {
      :username => :username, :user_id => :user_id, :device_uuid => :device_uuid, :longitude => :longitude, :latitude => :latitude, :password => :password

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if AuthUserRequest.attribute_map["username".to_sym] != nil
        name = "username".to_sym
        value = attributes["username"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AuthUserRequest.attribute_map["user_id".to_sym] != nil
        name = "user_id".to_sym
        value = attributes["user_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AuthUserRequest.attribute_map["device_uuid".to_sym] != nil
        name = "device_uuid".to_sym
        value = attributes["device_uuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AuthUserRequest.attribute_map["longitude".to_sym] != nil
        name = "longitude".to_sym
        value = attributes["longitude"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AuthUserRequest.attribute_map["latitude".to_sym] != nil
        name = "latitude".to_sym
        value = attributes["latitude"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AuthUserRequest.attribute_map["password".to_sym] != nil
        name = "password".to_sym
        value = attributes["password"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    AuthUserRequest.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


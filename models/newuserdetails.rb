class NewUserDetails
  attr_accessor :first_name, :last_name, :middle_name, :device_uuid, :dob, :email_address, :longitude, :cell_phone, :latitude, :password, :user_name

  # :internal => :external
  def self.attribute_map
  {
      :first_name => :first_name, :last_name => :last_name, :middle_name => :middle_name, :device_uuid => :device_uuid, :dob => :dob, :email_address => :email_address, :longitude => :longitude, :cell_phone => :cell_phone, :latitude => :latitude, :password => :password, :user_name => :user_name

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if NewUserDetails.attribute_map["first_name".to_sym] != nil
        name = "first_name".to_sym
        value = attributes["first_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewUserDetails.attribute_map["last_name".to_sym] != nil
        name = "last_name".to_sym
        value = attributes["last_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewUserDetails.attribute_map["middle_name".to_sym] != nil
        name = "middle_name".to_sym
        value = attributes["middle_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewUserDetails.attribute_map["device_uuid".to_sym] != nil
        name = "device_uuid".to_sym
        value = attributes["device_uuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewUserDetails.attribute_map["dob".to_sym] != nil
        name = "dob".to_sym
        value = attributes["dob"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewUserDetails.attribute_map["email_address".to_sym] != nil
        name = "email_address".to_sym
        value = attributes["email_address"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewUserDetails.attribute_map["longitude".to_sym] != nil
        name = "longitude".to_sym
        value = attributes["longitude"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewUserDetails.attribute_map["cell_phone".to_sym] != nil
        name = "cell_phone".to_sym
        value = attributes["cell_phone"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewUserDetails.attribute_map["latitude".to_sym] != nil
        name = "latitude".to_sym
        value = attributes["latitude"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewUserDetails.attribute_map["password".to_sym] != nil
        name = "password".to_sym
        value = attributes["password"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewUserDetails.attribute_map["user_name".to_sym] != nil
        name = "user_name".to_sym
        value = attributes["user_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    NewUserDetails.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


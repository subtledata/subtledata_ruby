class AuthResponse
  attr_accessor :device_id, :user_id, :result, :success, :error

  # :internal => :external
  def self.attribute_map
  {
      :device_id => :device_id, :user_id => :user_id, :result => :result, :success => :success, :error => :error

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if AuthResponse.attribute_map["device_id".to_sym] != nil
        name = "device_id".to_sym
        value = attributes["device_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AuthResponse.attribute_map["user_id".to_sym] != nil
        name = "user_id".to_sym
        value = attributes["user_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AuthResponse.attribute_map["result".to_sym] != nil
        name = "result".to_sym
        value = attributes["result"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AuthResponse.attribute_map["success".to_sym] != nil
        name = "success".to_sym
        value = attributes["success"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AuthResponse.attribute_map["error".to_sym] != nil
        name = "error".to_sym
        value = attributes["error"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    AuthResponse.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


class NewUser
  attr_accessor :user_guid, :user_id, :device_id

  # :internal => :external
  def self.attribute_map
  {
      :user_guid => :user_guid, :user_id => :user_id, :device_id => :device_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if NewUser.attribute_map["user_guid".to_sym] != nil
        name = "user_guid".to_sym
        value = attributes["user_guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewUser.attribute_map["user_id".to_sym] != nil
        name = "user_id".to_sym
        value = attributes["user_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if NewUser.attribute_map["device_id".to_sym] != nil
        name = "device_id".to_sym
        value = attributes["device_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    NewUser.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


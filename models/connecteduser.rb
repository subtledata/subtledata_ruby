class ConnectedUser
  attr_accessor :first_name, :last_name, :user_id, :dob, :email_address, :cover_number, :middle_name, :cell_phone, :user_name

  # :internal => :external
  def self.attribute_map
  {
      :first_name => :first_name, :last_name => :last_name, :user_id => :user_id, :dob => :dob, :email_address => :email_address, :cover_number => :cover_number, :middle_name => :middle_name, :cell_phone => :cell_phone, :user_name => :user_name

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ConnectedUser.attribute_map["first_name".to_sym] != nil
        name = "first_name".to_sym
        value = attributes["first_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConnectedUser.attribute_map["last_name".to_sym] != nil
        name = "last_name".to_sym
        value = attributes["last_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConnectedUser.attribute_map["user_id".to_sym] != nil
        name = "user_id".to_sym
        value = attributes["user_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConnectedUser.attribute_map["dob".to_sym] != nil
        name = "dob".to_sym
        value = attributes["dob"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConnectedUser.attribute_map["email_address".to_sym] != nil
        name = "email_address".to_sym
        value = attributes["email_address"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConnectedUser.attribute_map["cover_number".to_sym] != nil
        name = "cover_number".to_sym
        value = attributes["cover_number"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConnectedUser.attribute_map["middle_name".to_sym] != nil
        name = "middle_name".to_sym
        value = attributes["middle_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConnectedUser.attribute_map["cell_phone".to_sym] != nil
        name = "cell_phone".to_sym
        value = attributes["cell_phone"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConnectedUser.attribute_map["user_name".to_sym] != nil
        name = "user_name".to_sym
        value = attributes["user_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ConnectedUser.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


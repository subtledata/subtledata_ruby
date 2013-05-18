class Employee
  attr_accessor :ssn, :last_name, :middle_name, :emergency_contact_number, :date_terminated, :dob, :alcohol_commission_number, :alcohol_commission_expiration_date, :first_name, :is_manager, :health_cert_number, :mobile_phone, :date_hired, :home_phone, :country_of_nationality, :emergency_contact_name, :health_cert_expiration_date, :date_last_review, :user_name, :email, :employee_id

  # :internal => :external
  def self.attribute_map
  {
      :ssn => :ssn, :last_name => :last_name, :middle_name => :middle_name, :emergency_contact_number => :emergency_contact_number, :date_terminated => :date_terminated, :dob => :dob, :alcohol_commission_number => :alcohol_commission_number, :alcohol_commission_expiration_date => :alcohol_commission_expiration_date, :first_name => :first_name, :is_manager => :is_manager, :health_cert_number => :health_cert_number, :mobile_phone => :mobile_phone, :date_hired => :date_hired, :home_phone => :home_phone, :country_of_nationality => :country_of_nationality, :emergency_contact_name => :emergency_contact_name, :health_cert_expiration_date => :health_cert_expiration_date, :date_last_review => :date_last_review, :user_name => :user_name, :email => :email, :employee_id => :employee_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Employee.attribute_map["ssn".to_sym] != nil
        name = "ssn".to_sym
        value = attributes["ssn"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["last_name".to_sym] != nil
        name = "last_name".to_sym
        value = attributes["last_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["middle_name".to_sym] != nil
        name = "middle_name".to_sym
        value = attributes["middle_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["emergency_contact_number".to_sym] != nil
        name = "emergency_contact_number".to_sym
        value = attributes["emergency_contact_number"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["date_terminated".to_sym] != nil
        name = "date_terminated".to_sym
        value = attributes["date_terminated"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["dob".to_sym] != nil
        name = "dob".to_sym
        value = attributes["dob"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["alcohol_commission_number".to_sym] != nil
        name = "alcohol_commission_number".to_sym
        value = attributes["alcohol_commission_number"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["alcohol_commission_expiration_date".to_sym] != nil
        name = "alcohol_commission_expiration_date".to_sym
        value = attributes["alcohol_commission_expiration_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["first_name".to_sym] != nil
        name = "first_name".to_sym
        value = attributes["first_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["is_manager".to_sym] != nil
        name = "is_manager".to_sym
        value = attributes["is_manager"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["health_cert_number".to_sym] != nil
        name = "health_cert_number".to_sym
        value = attributes["health_cert_number"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["mobile_phone".to_sym] != nil
        name = "mobile_phone".to_sym
        value = attributes["mobile_phone"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["date_hired".to_sym] != nil
        name = "date_hired".to_sym
        value = attributes["date_hired"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["home_phone".to_sym] != nil
        name = "home_phone".to_sym
        value = attributes["home_phone"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["country_of_nationality".to_sym] != nil
        name = "country_of_nationality".to_sym
        value = attributes["country_of_nationality"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["emergency_contact_name".to_sym] != nil
        name = "emergency_contact_name".to_sym
        value = attributes["emergency_contact_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["health_cert_expiration_date".to_sym] != nil
        name = "health_cert_expiration_date".to_sym
        value = attributes["health_cert_expiration_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["date_last_review".to_sym] != nil
        name = "date_last_review".to_sym
        value = attributes["date_last_review"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["user_name".to_sym] != nil
        name = "user_name".to_sym
        value = attributes["user_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["email".to_sym] != nil
        name = "email".to_sym
        value = attributes["email"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Employee.attribute_map["employee_id".to_sym] != nil
        name = "employee_id".to_sym
        value = attributes["employee_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Employee.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


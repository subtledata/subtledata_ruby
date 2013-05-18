class Location
  attr_accessor :cross_streets, :receipt_number_instructions, :employee_request_through_app, :menu_ordering_available, :payment_via_credit_card_available_message, :postal_code, :location_id, :app_specials, :user_rating, :location_name, :tender_types, :process_new_credit_cards, :table_number_instructions, :state, :color_theme, :latitude, :logo_url, :website_url, :revenue_centers, :city, :ordering_available_message, :phone, :terminals, :location_picture_url, :favorites_ordering_available, :neighborhood_name, :discount_types, :longitude, :price_rating, :process_pre_authed_cards, :address_line_2, :address_line_1

  # :internal => :external
  def self.attribute_map
  {
      :cross_streets => :cross_streets, :receipt_number_instructions => :receipt_number_instructions, :employee_request_through_app => :employee_request_through_app, :menu_ordering_available => :menu_ordering_available, :payment_via_credit_card_available_message => :payment_via_credit_card_available_message, :postal_code => :postal_code, :location_id => :location_id, :app_specials => :app_specials, :user_rating => :user_rating, :location_name => :location_name, :tender_types => :tender_types, :process_new_credit_cards => :process_new_credit_cards, :table_number_instructions => :table_number_instructions, :state => :state, :color_theme => :color_theme, :latitude => :latitude, :logo_url => :logo_url, :website_url => :website_url, :revenue_centers => :revenue_centers, :city => :city, :ordering_available_message => :ordering_available_message, :phone => :phone, :terminals => :terminals, :location_picture_url => :location_picture_url, :favorites_ordering_available => :favorites_ordering_available, :neighborhood_name => :neighborhood_name, :discount_types => :discount_types, :longitude => :longitude, :price_rating => :price_rating, :process_pre_authed_cards => :process_pre_authed_cards, :address_line_2 => :address_line_2, :address_line_1 => :address_line_1

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Location.attribute_map["cross_streets".to_sym] != nil
        name = "cross_streets".to_sym
        value = attributes["cross_streets"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["receipt_number_instructions".to_sym] != nil
        name = "receipt_number_instructions".to_sym
        value = attributes["receipt_number_instructions"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["employee_request_through_app".to_sym] != nil
        name = "employee_request_through_app".to_sym
        value = attributes["employee_request_through_app"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["menu_ordering_available".to_sym] != nil
        name = "menu_ordering_available".to_sym
        value = attributes["menu_ordering_available"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["payment_via_credit_card_available_message".to_sym] != nil
        name = "payment_via_credit_card_available_message".to_sym
        value = attributes["payment_via_credit_card_available_message"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["postal_code".to_sym] != nil
        name = "postal_code".to_sym
        value = attributes["postal_code"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["location_id".to_sym] != nil
        name = "location_id".to_sym
        value = attributes["location_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["app_specials".to_sym] != nil
        name = "app_specials".to_sym
        value = attributes["app_specials"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["user_rating".to_sym] != nil
        name = "user_rating".to_sym
        value = attributes["user_rating"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["location_name".to_sym] != nil
        name = "location_name".to_sym
        value = attributes["location_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["tender_types".to_sym] != nil
        name = "tender_types".to_sym
        value = attributes["tender_types"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push TenderType.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if Location.attribute_map["process_new_credit_cards".to_sym] != nil
        name = "process_new_credit_cards".to_sym
        value = attributes["process_new_credit_cards"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["table_number_instructions".to_sym] != nil
        name = "table_number_instructions".to_sym
        value = attributes["table_number_instructions"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["state".to_sym] != nil
        name = "state".to_sym
        value = attributes["state"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["color_theme".to_sym] != nil
        name = "color_theme".to_sym
        value = attributes["color_theme"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["latitude".to_sym] != nil
        name = "latitude".to_sym
        value = attributes["latitude"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["logo_url".to_sym] != nil
        name = "logo_url".to_sym
        value = attributes["logo_url"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["website_url".to_sym] != nil
        name = "website_url".to_sym
        value = attributes["website_url"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["revenue_centers".to_sym] != nil
        name = "revenue_centers".to_sym
        value = attributes["revenue_centers"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push RevenueCenter.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if Location.attribute_map["city".to_sym] != nil
        name = "city".to_sym
        value = attributes["city"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["ordering_available_message".to_sym] != nil
        name = "ordering_available_message".to_sym
        value = attributes["ordering_available_message"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["phone".to_sym] != nil
        name = "phone".to_sym
        value = attributes["phone"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["terminals".to_sym] != nil
        name = "terminals".to_sym
        value = attributes["terminals"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push Terminal.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if Location.attribute_map["location_picture_url".to_sym] != nil
        name = "location_picture_url".to_sym
        value = attributes["location_picture_url"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["favorites_ordering_available".to_sym] != nil
        name = "favorites_ordering_available".to_sym
        value = attributes["favorites_ordering_available"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["neighborhood_name".to_sym] != nil
        name = "neighborhood_name".to_sym
        value = attributes["neighborhood_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["discount_types".to_sym] != nil
        name = "discount_types".to_sym
        value = attributes["discount_types"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push DiscountType.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if Location.attribute_map["longitude".to_sym] != nil
        name = "longitude".to_sym
        value = attributes["longitude"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["price_rating".to_sym] != nil
        name = "price_rating".to_sym
        value = attributes["price_rating"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["process_pre_authed_cards".to_sym] != nil
        name = "process_pre_authed_cards".to_sym
        value = attributes["process_pre_authed_cards"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["address_line_2".to_sym] != nil
        name = "address_line_2".to_sym
        value = attributes["address_line_2"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Location.attribute_map["address_line_1".to_sym] != nil
        name = "address_line_1".to_sym
        value = attributes["address_line_1"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Location.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


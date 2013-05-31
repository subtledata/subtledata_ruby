class MenuItem
  attr_accessor :sku, :food_flag, :alcohol_flag, :display_name, :name, :merchandise_flag, :available_for_order, :price, :description, :_u_p_c, :_modifier_types, :item_images, :cost, :revenue_center_id, :item_id, :local_pos_id, :out_of_stock_flag

  # :internal => :external
  def self.attribute_map
  {
      :sku => :sku, :food_flag => :food_flag, :alcohol_flag => :alcohol_flag, :display_name => :display_name, :name => :name, :merchandise_flag => :merchandise_flag, :available_for_order => :available_for_order, :price => :price, :description => :description, :_u_p_c => :UPC, :_modifier_types => :ModifierTypes, :item_images => :item_images, :cost => :cost, :revenue_center_id => :revenue_center_id, :item_id => :item_id, :local_pos_id => :local_pos_id, :out_of_stock_flag => :out_of_stock_flag

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if MenuItem.attribute_map["sku".to_sym] != nil
        name = "sku".to_sym
        value = attributes["sku"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItem.attribute_map["food_flag".to_sym] != nil
        name = "food_flag".to_sym
        value = attributes["food_flag"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItem.attribute_map["alcohol_flag".to_sym] != nil
        name = "alcohol_flag".to_sym
        value = attributes["alcohol_flag"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItem.attribute_map["display_name".to_sym] != nil
        name = "display_name".to_sym
        value = attributes["display_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItem.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItem.attribute_map["merchandise_flag".to_sym] != nil
        name = "merchandise_flag".to_sym
        value = attributes["merchandise_flag"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItem.attribute_map["available_for_order".to_sym] != nil
        name = "available_for_order".to_sym
        value = attributes["available_for_order"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItem.attribute_map["price".to_sym] != nil
        name = "price".to_sym
        value = attributes["price"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItem.attribute_map["description".to_sym] != nil
        name = "description".to_sym
        value = attributes["description"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItem.attribute_map["_u_p_c".to_sym] != nil
        name = "_u_p_c".to_sym
        value = attributes["UPC"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItem.attribute_map["_modifier_types".to_sym] != nil
        name = "_modifier_types".to_sym
        value = attributes["ModifierTypes"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push Modifiertype.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if MenuItem.attribute_map["item_images".to_sym] != nil
        name = "item_images".to_sym
        value = attributes["item_images"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push ItemImage.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if MenuItem.attribute_map["cost".to_sym] != nil
        name = "cost".to_sym
        value = attributes["cost"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItem.attribute_map["revenue_center_id".to_sym] != nil
        name = "revenue_center_id".to_sym
        value = attributes["revenue_center_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItem.attribute_map["item_id".to_sym] != nil
        name = "item_id".to_sym
        value = attributes["item_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItem.attribute_map["local_pos_id".to_sym] != nil
        name = "local_pos_id".to_sym
        value = attributes["local_pos_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItem.attribute_map["out_of_stock_flag".to_sym] != nil
        name = "out_of_stock_flag".to_sym
        value = attributes["out_of_stock_flag"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    MenuItem.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


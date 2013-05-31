class MenuItemDetail
  attr_accessor :description, :price, :name, :revenue_center_id, :item_id, :item_images

  # :internal => :external
  def self.attribute_map
  {
      :description => :description, :price => :price, :name => :name, :revenue_center_id => :revenue_center_id, :item_id => :item_id, :item_images => :item_images

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if MenuItemDetail.attribute_map["description".to_sym] != nil
        name = "description".to_sym
        value = attributes["description"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItemDetail.attribute_map["price".to_sym] != nil
        name = "price".to_sym
        value = attributes["price"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItemDetail.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItemDetail.attribute_map["revenue_center_id".to_sym] != nil
        name = "revenue_center_id".to_sym
        value = attributes["revenue_center_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItemDetail.attribute_map["item_id".to_sym] != nil
        name = "item_id".to_sym
        value = attributes["item_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if MenuItemDetail.attribute_map["item_images".to_sym] != nil
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
      end
  end

  def to_body
    body = {}
    MenuItemDetail.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


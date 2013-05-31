class Local
  attr_accessor :description, :category_id, :name, :modifier_list

  # :internal => :external
  def self.attribute_map
  {
      :description => :description, :category_id => :category_id, :name => :name, :modifier_list => :modifier_list

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Local.attribute_map["description".to_sym] != nil
        name = "description".to_sym
        value = attributes["description"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Local.attribute_map["category_id".to_sym] != nil
        name = "category_id".to_sym
        value = attributes["category_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Local.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Local.attribute_map["modifier_list".to_sym] != nil
        name = "modifier_list".to_sym
        value = attributes["modifier_list"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push ModifierList.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    Local.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


class CategoryImage
  attr_accessor :image_url, :image_type_id

  # :internal => :external
  def self.attribute_map
  {
      :image_url => :image_url, :image_type_id => :image_type_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if CategoryImage.attribute_map["image_url".to_sym] != nil
        name = "image_url".to_sym
        value = attributes["image_url"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CategoryImage.attribute_map["image_type_id".to_sym] != nil
        name = "image_type_id".to_sym
        value = attributes["image_type_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    CategoryImage.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


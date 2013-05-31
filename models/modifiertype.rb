class Modifiertype
  attr_accessor :local, :mapped

  # :internal => :external
  def self.attribute_map
  {
      :local => :local, :mapped => :mapped

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Modifiertype.attribute_map["local".to_sym] != nil
        name = "local".to_sym
        value = attributes["local"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push Local.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if Modifiertype.attribute_map["mapped".to_sym] != nil
        name = "mapped".to_sym
        value = attributes["mapped"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push Mapped.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    Modifiertype.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


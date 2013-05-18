class OrderResults
  attr_accessor :seconds_to_wait, :ad_url, :result, :success

  # :internal => :external
  def self.attribute_map
  {
      :seconds_to_wait => :seconds_to_wait, :ad_url => :ad_url, :result => :result, :success => :success

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if OrderResults.attribute_map["seconds_to_wait".to_sym] != nil
        name = "seconds_to_wait".to_sym
        value = attributes["seconds_to_wait"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OrderResults.attribute_map["ad_url".to_sym] != nil
        name = "ad_url".to_sym
        value = attributes["ad_url"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OrderResults.attribute_map["result".to_sym] != nil
        name = "result".to_sym
        value = attributes["result"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if OrderResults.attribute_map["success".to_sym] != nil
        name = "success".to_sym
        value = attributes["success"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    OrderResults.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


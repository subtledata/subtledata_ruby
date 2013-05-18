class TableMinimal
  attr_accessor :pos_table_id, :subtledata_id, :revenue_center_name, :name, :revenue_center_id

  # :internal => :external
  def self.attribute_map
  {
      :pos_table_id => :pos_table_id, :subtledata_id => :subtledata_id, :revenue_center_name => :revenue_center_name, :name => :name, :revenue_center_id => :revenue_center_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if TableMinimal.attribute_map["pos_table_id".to_sym] != nil
        name = "pos_table_id".to_sym
        value = attributes["pos_table_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TableMinimal.attribute_map["subtledata_id".to_sym] != nil
        name = "subtledata_id".to_sym
        value = attributes["subtledata_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TableMinimal.attribute_map["revenue_center_name".to_sym] != nil
        name = "revenue_center_name".to_sym
        value = attributes["revenue_center_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TableMinimal.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TableMinimal.attribute_map["revenue_center_id".to_sym] != nil
        name = "revenue_center_id".to_sym
        value = attributes["revenue_center_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    TableMinimal.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end


module SubtleData
  class PreAuthPayment
    attr_accessor :status, :tip_amount, :total_amount, :amount_before_tip, :payment_source, :external_payment_id, :external_response_field_1, :tender_type_name, :external_response_field_2, :external_response_field_3, :external_response_field_4

    # :internal => :external
    def self.attribute_map
      {
        :status => :status, :tip_amount => :tip_amount, :total_amount => :total_amount, :amount_before_tip => :amount_before_tip, :payment_source => :payment_source, :external_payment_id => :external_payment_id, :external_response_field_1 => :external_response_field_1, :tender_type_name => :tender_type_name, :external_response_field_2 => :external_response_field_2, :external_response_field_3 => :external_response_field_3, :external_response_field_4 => :external_response_field_4
      }
    end

    def initialize(attributes = {})
      # Morph attribute keys into undescored rubyish style
      if attributes.to_s != ""
        PreAuthPayment.attribute_map.each do |sym|
            send("#{sym}=", attributes[sym.to_s]) if self.respond_to?(sym)
        end
      end
    end

    def to_body
      body = {}
      PreAuthPayment.attribute_map.each_pair do |key,value|
        body[value] = self.send(key) unless self.send(key).nil?
      end
      body
    end
  end
end 

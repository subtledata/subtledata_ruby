require "uri"

class Locations_api
  basePath = "https://api.subtledata.com/v1"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self.get_all_locations (api_key,use_cache,opts={})
    query_param_keys = [:api_key,:use_cache]

    # verify existence of params
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :api_key => api_key, :use_cache => use_cache}.merge(opts)

    #resource path
    path = "/locations".sub('{format}','json')
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Location.new(response)}
  end

def self.get_locations_near (api_key,use_cache,latitude,longitude,radius,opts={})
    query_param_keys = [:api_key,:use_cache,:latitude,:longitude,:radius]

    # verify existence of params
    raise "api_key is required" if api_key.nil?
    raise "latitude is required" if latitude.nil?
    raise "longitude is required" if longitude.nil?
    raise "radius is required" if radius.nil?
    # set default values and merge with input
    options = { :api_key => api_key, :use_cache => use_cache, :latitude => latitude, :longitude => longitude, :radius => radius}.merge(opts)

    #resource path
    path = "/locations/filter/near".sub('{format}','json')
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Location.new(response)}
  end

def self.get_location (location_id,api_key,use_cache,opts={})
    query_param_keys = [:api_key,:use_cache]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :api_key => api_key, :use_cache => use_cache}.merge(opts)

    #resource path
    path = "/locations/{location_id}".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Location.new(response)
  end

def self.get_location_menu (location_id,api_key,use_cache,opts={})
    query_param_keys = [:api_key,:use_cache]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :api_key => api_key, :use_cache => use_cache}.merge(opts)

    #resource path
    path = "/locations/{location_id}/menu".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Category.new(response)}
  end

def self.get_menu_item (location_id,item_id,api_key,use_cache,opts={})
    query_param_keys = [:api_key,:use_cache]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "item_id is required" if item_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :item_id => item_id, :api_key => api_key, :use_cache => use_cache}.merge(opts)

    #resource path
    path = "/locations/{location_id}/menu/items/{item_id}".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    .sub('{' + 'item_id' + '}', escapeString(item_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    MenuItem.new(response)
  end

def self.get_location_employees (location_id,api_key,manager_id,revenue_center_id,opts={})
    query_param_keys = [:api_key,:manager_id,:revenue_center_id]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "api_key is required" if api_key.nil?
    raise "manager_id is required" if manager_id.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :api_key => api_key, :manager_id => manager_id, :revenue_center_id => revenue_center_id}.merge(opts)

    #resource path
    path = "/locations/{location_id}/employees".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Employee.new(response)}
  end

def self.get_table_list (location_id,api_key,use_cache,opts={})
    query_param_keys = [:api_key,:use_cache]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :api_key => api_key, :use_cache => use_cache}.merge(opts)

    #resource path
    path = "/locations/{location_id}/tables".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|TableMinimal.new(response)}
  end

def self.get_tickets (location_id,api_key,condensed,opts={})
    query_param_keys = [:api_key,:condensed]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :api_key => api_key, :condensed => condensed}.merge(opts)

    #resource path
    path = "/locations/{location_id}/tickets".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Ticket.new(response)}
  end

def self.create_ticket (location_id,api_key,ticket_type,body,opts={})
    query_param_keys = [:api_key,:ticket_type]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "api_key is required" if api_key.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :api_key => api_key, :ticket_type => ticket_type, :body => body}.merge(opts)

    #resource path
    path = "/locations/{location_id}/tickets".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    TicketStatus.new(response)
  end

def self.get_tabs (location_id,api_key,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :api_key => api_key}.merge(opts)

    #resource path
    path = "/locations/{location_id}/tabs".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Tab.new(response)}
  end

def self.get_table (location_id,table_id,api_key,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "table_id is required" if table_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :table_id => table_id, :api_key => api_key}.merge(opts)

    #resource path
    path = "/locations/{location_id}/tables/{table_id}".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    .sub('{' + 'table_id' + '}', escapeString(table_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    TableDetails.new(response)
  end

def self.get_ticket (location_id,ticket_id,api_key,user_id,opts={})
    query_param_keys = [:api_key,:user_id]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "ticket_id is required" if ticket_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :ticket_id => ticket_id, :api_key => api_key, :user_id => user_id}.merge(opts)

    #resource path
    path = "/locations/{location_id}/tickets/{ticket_id}".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    .sub('{' + 'ticket_id' + '}', escapeString(ticket_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Ticket.new(response)
  end

def self.void_ticket (location_id,ticket_id,api_key,user_id,opts={})
    query_param_keys = [:api_key,:user_id]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "ticket_id is required" if ticket_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :ticket_id => ticket_id, :api_key => api_key, :user_id => user_id}.merge(opts)

    #resource path
    path = "/locations/{location_id}/tickets/{ticket_id}".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    .sub('{' + 'ticket_id' + '}', escapeString(ticket_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Status.new(response)
  end

def self.get_ticket_with_p_o_s__i_d (location_id,pos_ticket_id,api_key,user_id,opts={})
    query_param_keys = [:api_key,:user_id]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "pos_ticket_id is required" if pos_ticket_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :pos_ticket_id => pos_ticket_id, :api_key => api_key, :user_id => user_id}.merge(opts)

    #resource path
    path = "/locations/{location_id}/tickets/pos/{pos_ticket_id}".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    .sub('{' + 'pos_ticket_id' + '}', escapeString(pos_ticket_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Ticket.new(response)
  end

def self.submit_order (location_id,ticket_id,user_id,api_key,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "ticket_id is required" if ticket_id.nil?
    raise "user_id is required" if user_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :ticket_id => ticket_id, :user_id => user_id, :api_key => api_key}.merge(opts)

    #resource path
    path = "/locations/{location_id}/tickets/{ticket_id}/users/{user_id}/order".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    .sub('{' + 'ticket_id' + '}', escapeString(ticket_id))
    .sub('{' + 'user_id' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    OrderResults.new(response)
  end

def self.add_items_to_order (location_id,ticket_id,user_id,api_key,body,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "ticket_id is required" if ticket_id.nil?
    raise "user_id is required" if user_id.nil?
    raise "api_key is required" if api_key.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :ticket_id => ticket_id, :user_id => user_id, :api_key => api_key, :body => body}.merge(opts)

    #resource path
    path = "/locations/{location_id}/tickets/{ticket_id}/users/{user_id}/order".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    .sub('{' + 'ticket_id' + '}', escapeString(ticket_id))
    .sub('{' + 'user_id' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Status.new(response)
  end

def self.get_users_connected_to_ticket (location_id,ticket_id,api_key,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "ticket_id is required" if ticket_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :ticket_id => ticket_id, :api_key => api_key}.merge(opts)

    #resource path
    path = "/locations/{location_id}/tickets/{ticket_id}/users".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    .sub('{' + 'ticket_id' + '}', escapeString(ticket_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|User.new(response)}
  end

def self.connect_user_to_ticket (location_id,ticket_id,api_key,body,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "ticket_id is required" if ticket_id.nil?
    raise "api_key is required" if api_key.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :ticket_id => ticket_id, :api_key => api_key, :body => body}.merge(opts)

    #resource path
    path = "/locations/{location_id}/tickets/{ticket_id}/users".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    .sub('{' + 'ticket_id' + '}', escapeString(ticket_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ConnectStatus.new(response)
  end

def self.discount_ticket (location_id,ticket_id,api_key,body,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "ticket_id is required" if ticket_id.nil?
    raise "api_key is required" if api_key.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :ticket_id => ticket_id, :api_key => api_key, :body => body}.merge(opts)

    #resource path
    path = "/locations/{location_id}/tickets/{ticket_id}/discount".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    .sub('{' + 'ticket_id' + '}', escapeString(ticket_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Status.new(response)
  end

def self.add_payment_to_ticket (location_id,ticket_id,api_key,body,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "ticket_id is required" if ticket_id.nil?
    raise "api_key is required" if api_key.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :ticket_id => ticket_id, :api_key => api_key, :body => body}.merge(opts)

    #resource path
    path = "/locations/{location_id}/tickets/{ticket_id}/payments".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    .sub('{' + 'ticket_id' + '}', escapeString(ticket_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    PaymentStatus.new(response)
  end

def self.add_external_payment_to_ticket (location_id,ticket_id,api_key,body,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "ticket_id is required" if ticket_id.nil?
    raise "api_key is required" if api_key.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :ticket_id => ticket_id, :api_key => api_key, :body => body}.merge(opts)

    #resource path
    path = "/locations/{location_id}/tickets/{ticket_id}/payments/external".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    .sub('{' + 'ticket_id' + '}', escapeString(ticket_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ExternalPaymentStatus.new(response)
  end

end


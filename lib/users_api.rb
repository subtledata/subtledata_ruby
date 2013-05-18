require "uri"

class Users_api
  basePath = "https://api.subtledata.com/v1"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self.create_user (api_key,body,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "api_key is required" if api_key.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :api_key => api_key, :body => body}.merge(opts)

    #resource path
    path = "/users".sub('{format}','json')
    
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
    NewUser.new(response)
  end

def self.get_user (user_id,api_key,use_cache,opts={})
    query_param_keys = [:api_key,:use_cache]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :api_key => api_key, :use_cache => use_cache}.merge(opts)

    #resource path
    path = "/users/{user_id}".sub('{format}','json').sub('{' + 'user_id' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    User.new(response)
  end

def self.delete_user (user_id,api_key,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :api_key => api_key}.merge(opts)

    #resource path
    path = "/users/{user_id}".sub('{format}','json').sub('{' + 'user_id' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeleteUserStatus.new(response)
  end

def self.auth_user (api_key,body,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "api_key is required" if api_key.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :api_key => api_key, :body => body}.merge(opts)

    #resource path
    path = "/users/authenticate".sub('{format}','json')
    
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
    AuthResponse.new(response)
  end

def self.search_users_by_name (user_name,api_key,use_cache,opts={})
    query_param_keys = [:api_key,:use_cache]

    # verify existence of params
    raise "user_name is required" if user_name.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :user_name => user_name, :api_key => api_key, :use_cache => use_cache}.merge(opts)

    #resource path
    path = "/users/search/name/{user_name}".sub('{format}','json').sub('{' + 'user_name' + '}', escapeString(user_name))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    User.new(response)
  end

def self.get_users_cards (user_id,api_key,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :api_key => api_key}.merge(opts)

    #resource path
    path = "/users/{user_id}/cards".sub('{format}','json').sub('{' + 'user_id' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Card.new(response)}
  end

def self.create_card_for_user (user_id,api_key,body,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "api_key is required" if api_key.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :api_key => api_key, :body => body}.merge(opts)

    #resource path
    path = "/users/{user_id}/cards".sub('{format}','json').sub('{' + 'user_id' + '}', escapeString(user_id))
    
    
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
    CardStatus.new(response)
  end

def self.delete_user_credit_card (user_id,card_id,api_key,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "card_id is required" if card_id.nil?
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :card_id => card_id, :api_key => api_key}.merge(opts)

    #resource path
    path = "/users/{user_id}/cards/{card_id}".sub('{format}','json').sub('{' + 'user_id' + '}', escapeString(user_id))
    .sub('{' + 'card_id' + '}', escapeString(card_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Status.new(response)
  end

end


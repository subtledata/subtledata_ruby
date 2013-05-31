require "uri"

class Concessions_api
  basePath = "https://api.subtledata.com/v1"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self.create_concession_order (location_id,api_key,body,opts={})
    query_param_keys = [:api_key]

    # verify existence of params
    raise "location_id is required" if location_id.nil?
    raise "api_key is required" if api_key.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :location_id => location_id, :api_key => api_key, :body => body}.merge(opts)

    #resource path
    path = "/concessions/{location_id}/order".sub('{format}','json').sub('{' + 'location_id' + '}', escapeString(location_id))
    
    
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
    ConcessionOrderResults.new(response)
  end

end


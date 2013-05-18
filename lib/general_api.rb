require "uri"

class General_api
  basePath = "https://api.subtledata.com/v1"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self.get_all_countries (api_key,use_cache,opts={})
    query_param_keys = [:api_key,:use_cache]

    # verify existence of params
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :api_key => api_key, :use_cache => use_cache}.merge(opts)

    #resource path
    path = "/general/countries".sub('{format}','json')
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|Country.new(response)}
  end

def self.get_all_states (api_key,use_cache,opts={})
    query_param_keys = [:api_key,:use_cache]

    # verify existence of params
    raise "api_key is required" if api_key.nil?
    # set default values and merge with input
    options = { :api_key => api_key, :use_cache => use_cache}.merge(opts)

    #resource path
    path = "/general/states".sub('{format}','json')
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|State.new(response)}
  end

end


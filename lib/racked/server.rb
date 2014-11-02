require 'test/unit/assertions'
require 'net/http'
require 'date'
require 'date/format'
require 'digest/sha1'
require 'base64'
require 'time'

class Server
  include Test::Unit::Assertions
  
  def initialize(server='api.emailsrvr.com', version_prefix='/v0', user_key='xxxxxxxxxxxxxxxxxxxx', secret_hash='xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
    @server = server
    @version_prefix = version_prefix
    @user_key = user_key
    @secret_hash = secret_hash
  end
  
# Response Type Enums

  def xml_format
    'text/xml'
  end
  
  def json_format
    'application/json'
  end

#
# HTTP Request Verbs
#  
  def get(url_string, format)
    uri = full_uri(url_string)
    headers = prepared_headers
    headers['Accept'] = format
    request = Net::HTTP::Get.new(request_uri(uri), headers)
    http_response = make_request request, uri
  end
  
  def delete(url_string, format)
    uri = full_uri(url_string)
    headers = prepared_headers
    headers['Accept'] = format
    request = Net::HTTP::Delete.new(request_uri(uri), headers)
    http_response = make_request request, uri
  end
  
  def put(url_string, fields_hash, format)
    uri = full_uri(url_string)
    headers = prepared_headers
    headers['Accept'] = format
    request = Net::HTTP::Put.new(request_uri(uri), headers)
    request.set_form_data(fields_hash)
    http_response = make_request request, uri
  end
  
  def post(url_string, fields_hash, format)
    uri = full_uri(url_string)
    headers = prepared_headers
    headers['Accept'] = format
    request = Net::HTTP::Post.new(request_uri(uri), headers)
    request.set_form_data(fields_hash)
    http_response = make_request request, uri
  end
  
#
# HTTP Request Helpers
# 
  def make_request(request, uri)
    response = Net::HTTP::start(uri.host, uri.port)  do |http|
      begin
        response = http.request request
        case response
        when Net::HTTPSuccess
          then return response
        when Net::HTTPRedirection
          then fetch(response['location'], limit - 1)
        else
          response.error!  
      end
      rescue Exception => e
        puts e.message
        puts e.backtrace.inspect
        retry
      end
    end
    
    response
  end
  
  def full_uri url_string
    URI.parse('http://' + @server + @version_prefix + url_string)
  end
  
  def request_uri uri
    request = uri.path
    if ! uri.query.nil?
      request = request + '?' + uri.query
    end
    p [:request_uri, request]
    request
  end
  
  def prepared_headers
    headers = Hash.new
    headers.merge! headers_auth_creds(@user_key, @secret_hash)
    headers['Accept'] = xml_format
    headers
  end
  
  def headers_auth_creds apiKey, secretKey
    userAgent = 'Rackspace Email API Client'
    timestamp = DateTime.now.strftime('%Y%m%d%H%M%S')
    
    data_to_sign = apiKey + userAgent + timestamp + secretKey
    
    hash = Base64.encode64(Digest::SHA1.digest(data_to_sign))
    signature = apiKey + ":" + timestamp + ":" + hash
    
    headers = Hash['User-Agent' => userAgent, 'X-Api-Signature' => signature]
  end
end
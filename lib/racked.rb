# coding: utf-8
require 'json'
# require  './lib/racked/server.rb' #for dev
require 'racked/server.rb' #for release

class RackMailbox
  
  
  attr_accessor :attributes
  
  def initialize(attributes)
    @attributes = attributes #JSON.parse(json)
    puts @attributes.keys.inspect
  end

  def method_missing(method, *args)
    #x = name.to_s.camelize(:lower)
    x = method.to_s
    #return @attributes[access_key] if(@attributes.keys.include?(access_key))
    if(@attributes.keys.include?(x))
      @attributes[x]
    else
      super
    end
  end
  
end

class Racked
  #include Singleton
  
  def initialize
    #read config file
    
    @server = Server.new(MAIL_CFG["server"], MAIL_CFG["version_prefix"], MAIL_CFG["user_key"], MAIL_CFG["secret_hash"])
    @server.xml_format
  end
  
  def get_domain_info
    response = @server.get  '/customers/856863/domains/econetmail.com', @server.json_format
  end
  
  def get_mailboxes(size=50, offset=0)
    #get customer list
    response = @server.get  '/customers/856863/domains/econetmail.com/rs/mailboxes/?size=' + size.to_s + '&offset=' + offset.to_s, @server.json_format
    puts response.inspect
    # puts response['x-error-message']
    # puts response.body
    response = JSON.parse(response.body )
    # puts response.inspect
    #TO DO: error checking
    # returning [] do |mailboxes|
    #   response["rsMailboxes"].each {|c| mailboxes << Mailbox.new(c) }
    # end
    mailboxes = []
    response["rsMailboxes"].each do |mailbox|
      puts 'mailbox - ' + mailbox["name"]
      #mailboxes << Mailbox.new(mailbox)
      mailboxes << mailbox
    end
  end
  def get_mailbox_details(mailbox)
    #get mailbox details
    response = @server.get  '/customers/856863/domains/econetmail.com/rs/mailboxes/' + mailbox, @server.json_format
    puts response.inspect
    puts response['x-error-message']
    # response = JSON.parse(response)
    puts response.code
    puts response.body
    # puts response.inspect
    #TO DO: error checking
    # returning [] do |mailboxes|
    #   response["rsMailboxes"].each {|c| mailboxes << Mailbox.new(c) }
    # end
    return response
  end
  
  def create_mailbox(msisdn_number, fields_array)
    #create a customer mailbox
    response = @server.post  '/customers/856863/domains/econetmail.com/rs/mailboxes/' + msisdn_number, fields_array
    # puts response.inspect
    # puts response['x-error-message']
    # puts response.body.inspect
    return response
    #response = JSON.parse(response.body )
  end

  def update_mailbox(msisdn_number, fields_array)
    #create a customer mailbox
    response = @server.put  '/customers/856863/domains/econetmail.com/rs/mailboxes/' + msisdn_number, fields_array
    # puts response.inspect
    # puts response['x-error-message']
    # puts response.body.inspect
    return response
    #response = JSON.parse(response.body )
  end

end

# api = Racked.instance
# 
# api.get_customers
# 
# server = Server.new
# 
# response = server.get  '/customers', server.xml_format
# 
# #fields = Hash['serviceType' =>  'exchange', 'exchangeMaxNumMailboxes' => '4']
# #response =  server.post '/customers/me/domains/newdomain.com', fields
# 
# puts response.code
# puts response['x-error-message']
# puts response.body
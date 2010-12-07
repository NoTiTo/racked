# coding: utf-8
require 'json'
require  './lib/racked/server.rb'

class Mailbox

  def initialize(attributes)
    @attributes = attributes #JSON.parse(json)
  end

  def method_missing(method, *args)
    #x = method.to_s.camelize(:lower)
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
  
  def get_mailboxes
    #get customer list
    response = @server.get  '/customers/856863/domains/econetmail.com/rs/mailboxes', @server.json_format
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
      mailboxes << Mailbox.new(mailbox)
    end
  end
  
  def create_mailbox
    #create a customer mailbox
    
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
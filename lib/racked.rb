# coding: utf-8
require 'json'
# require  './lib/racked/server.rb' #for dev
$:.unshift(File.dirname(__FILE__))
require 'racked/server.rb' #for release
require 'soap_api/mailaccountsDriver.rb' #soap client driver generated via wsdl2ruby.rb --wsdl https://admin.mailtrust.com/mailaccounts/mailaccounts.wsdl --type client


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
  def get_mailbox_details(mailbox, account_details = {})
    self.check_account_details(account_details)
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
  
  def get_last_login(account_details = {}, mailbox)
    raise ArgumentError, "account_details hash must be supplied." unless !account_details.empty?
    driver = UtilsSoapPort.new
    # driver.wiredump_dev = STDOUT

    res = driver.GetUserLastLogin(account_details[:resellerUsername], account_details[:resellerPassword], account_details[:hostName], mailbox, account_details[:lastlogin])
    # if res[1].class == String && !res[1].empty?
    #   puts "yes"
    # end
    return res
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
  
  def delete_mailbox(msisdn)
    #create a customer mailbox
    response = @server.delete  '/customers/856863/domains/econetmail.com/rs/mailboxes/' + msisdn
    # puts response.inspect
    # puts response['x-error-message']
    # puts response.body.inspect
    return response
    #response = JSON.parse(response.body )
  end
  
  private
  def check_account_details(account_details)
    raise ArgumentError, 'Argument missing! account_details[:customer_number] missing.' unless account_details[:customer_number].empty? || account_details.include?(:customer_number)
    raise ArgumentError, 'Argument missing! account_details[:domain_name] missing.' unless account_details[:domain_name].empty? || account_details.include?(:domain_name)
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
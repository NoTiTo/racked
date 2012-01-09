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
  
  attr_accessor :server_host, :version_prefix, :user_key, :secret_hash
  
  def initialize(options)
    check_options(options, [:server_host, :version_prefix, :user_key, :secret_hash])
    @server_host = options[:server_host]
    @version_prefix = options[:version_prefix]
    @user_key = options[:user_key]
    @secret_hash = options[:secret_hash]
    #read config file
    # @server = Server.new(MAIL_CFG["server"], MAIL_CFG["version_prefix"], MAIL_CFG["user_key"], MAIL_CFG["secret_hash"])
    @server = Server.new(options[:server_host], options[:version_prefix], options[:user_key], options[:secret_hash])
    @server.xml_format
        
  end
  
  def get_domain_info(options)
    check_options(options, [:domain, :customer_number])
    response = @server.get  "/customers/#{@customer_number}/domains/#{@domain}", @server.json_format
  end
  
  def get_mailboxes(size=50, offset=0)
    check_options(options, [:domain, :customer_number, :mailbox_type])
    size = options[:size] || 50
    offset = options[:offset] || 0
    #get customer list
    response = @server.get  "/customers/#{@customer_number}/domains/#{@domain}/#{@mailbox_type}/mailboxes/?size=" + size.to_s + '&offset=' + offset.to_s, @server.json_format
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
  def get_mailbox_details(options)
    check_options(options, [:domain, :customer_number, :mailbox_type, :mailbox])
    
    #get mailbox details
    response = @server.get  "/customers/#{@customer_number}/domains/#{@domain}/#{@mailbox_type}/mailboxes/" + @mailbox, @server.json_format
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
  
  def get_last_login(account_details_for_soap = {}, mailbox)
    #TO DO: need to rethink
    check_options(options, [:mailbox])
    
    self.account_details_for_soap(options[:account_details])
    driver = UtilsSoapPort.new
    # driver.wiredump_dev = STDOUT

    res = driver.GetUserLastLogin(@account_details[:resellerUsername], @account_details[:resellerPassword], @account_details[:hostName], @mailbox, @account_details[:lastlogin])
    # if res[1].class == String && !res[1].empty?
    #   puts "yes"
    # end
    return res
  end

  def create_mailbox(options)
    check_options(options, [:domain, :customer_number, :mailbox_type, :mailbox, :data_fields_hash])
    #create a customer mailbox
    response = @server.post  "/customers/#{@customer_number}/domains/#{@domain}/#{@mailbox_type}/mailboxes/#{@mailbox}", @data_fields_hash, @server.json_format
    # puts response.inspect
    # puts response['x-error-message']
    # puts response.body.inspect
    return response
    #response = JSON.parse(response.body )
  end

  def update_mailbox(options)
    check_options(options, [:domain, :customer_number, :mailbox_type, :mailbox, :data_fields_hash])
    #update a customer mailbox
    response = @server.put  "/customers/#{@customer_number}/domains/#{@domain}/#{@mailbox_type}/mailboxes/#{@mailbox}", @data_fields_hash
    # puts response.inspect
    # puts response['x-error-message']
    # puts response.body.inspect
    return response
    #response = JSON.parse(response.body )
  end
  
  def delete_mailbox(options)
    #delete a customer mailbox
    check_options(options, [:domain, :customer_number, :mailbox_type, :mailbox])
    response = @server.delete  "/customers/#{@customer_number}/domains/#{@domain}/#{@mailbox_type}/mailboxes/#{@mailbox}", @server.json_format
    # puts response.inspect
    # puts response['x-error-message']
    # puts response.body.inspect
    return response
    #response = JSON.parse(response.body )
  end
  
  def add_customer(options)
    check_options(options, [:data_fields_hash])
    #add a customer account
    response = @server.post  "/customers", @data_fields_hash, @server.json_format
    return response
  end
  def add_domain(options)
    check_options(options, [:domain, :customer_number, :data_fields_hash])
    #add a customer account
    response = @server.post  "/customers/#{@customer_number}/domains/#{@domain}", @data_fields_hash, @server.json_format
    return response
  end

  private
  def check_account_details(account_details)
    raise ArgumentError, 'Argument missing! account_details[:customer_number] missing.' unless account_details[:customer_number].empty? || account_details.include?(:customer_number)
    raise ArgumentError, 'Argument missing! account_details[:domain_name] missing.' unless account_details[:domain_name].empty? || account_details.include?(:domain_name)
    @account_details = account_details
  end
  
  def check_options(supplied_options_hash, options_to_check)
    supplied_options_hash[:mailbox_type] ||= "rs"
    missing_options = []
    options_to_check.each do |opt|
      missing_options << opt if !supplied_options_hash[opt] || supplied_options_hash[opt].empty?
    end
    raise ArgumentError, "Argument(s) missing! You need to supply :#{missing_options.join(", :")}" unless missing_options.empty?

    @customer_number  = supplied_options_hash[:customer_number]
    @domain           = supplied_options_hash[:domain]
    @mailbox_type     = supplied_options_hash[:mailbox_type]
    @mailbox          = supplied_options_hash[:mailbox]
    @data_fields_hash = supplied_options_hash[:data_fields_hash]

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
require 'spec_helper'

describe Racked do
  before(:each) do
    @valid_attr = {
      :server_host    => 'api.emailsrvr.com',
      :version_prefix => '/v0',
      :user_key       => 'xxxxxxx',
      :secret_hash    => 'xxxxxxx',
    }
    @invalid_attr = {}
  end
  
  it 'should throw argument errors when initialized with no options' do
    expect{ Racked.new }.to raise_error(ArgumentError)
  end
  it 'should throw argument errors if the required options are missing' do
    expect{ Racked.new(@invalid_attr) }.to raise_error(ArgumentError)
  end

  it 'should initialize if the required options are supplied' do
    api = Racked.new(@valid_attr)
    api.class.should == Racked
  end
  # it 'should respond to attributes' do
  #   api = Racked.new(@valid_attr)
  #   api.should respond_to(:domain, :mailbox_type, :customer_number)
  # end
  it 'should assign attributes' do
    api = Racked.new(@valid_attr)
    api.server_host.should == "api.emailsrvr.com"
  end

end
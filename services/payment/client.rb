#!/usr/bin/env ruby
# frozen_string_literal: true

require "bundler/setup"
require "grpc"
require "mobility"

def client_call
  # 1. connect to server service
  stub = Mobility::Services::PaymentServices::Stub.new('0.0.0.0:50059', :this_channel_is_insecure)
  # 2. build request object
  req = Mobility::Services::ListPaymentsRequest.new(page_size: 1)
  # 3. call the remote method with request object as parameter
  resp_obj = stub.list_drivers(req)

  if resp_obj.successful
    puts "Response: #{resp_obj.drivers_list.drivers}"
  else
    puts "Response: #{resp_obj}"
  end
end

client_call

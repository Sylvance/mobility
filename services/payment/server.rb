#!/usr/bin/env ruby
# frozen_string_literal: true

require "bundler/setup"
require "grpc"
require "mobility"

class PaymentService < Mobility::Services::PaymentServices::Service
  def get_payment(req, _unused_call)
    puts "Response: #{req}"

    payment = Mobility::Services::Payment.new(
      issue_name: nil,
      type: nil,
      created_at: nil,
      modified_at: nil,
      deleted_at: nil,
      charge_percentage: nil,
      below_threshold: nil,
      at_station: nil,
      in_payment: nil,
      payment_id: nil
    )

    Mobility::Services::GetPaymentResponse.new(
      successful: true,
      payment: payment
    )
  end
end

class MobilityServer
  class << self
    def start
      start_grpc_server
    end

    private

    def start_grpc_server
      # create server
      @server = GRPC::RpcServer.new
      @server.add_http2_port("0.0.0.0:50059", :this_port_is_insecure)
      # assign server to a grpc handler
      @server.handle(PaymentService)
      @server.run_till_terminated
    end
  end
end

MobilityServer.start
